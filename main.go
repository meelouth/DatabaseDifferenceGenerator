package main

import (
	"context"
	"fmt"
	"log"
	"reflect"
	"strings"

	sq "github.com/Masterminds/squirrel"

	_ "github.com/lib/pq"

	"olympus/model"
	"olympus/repository"
)

const configurationFileName = "configuration.json"

// TODO: поправить логи
func main() {
	configurationReader := ConfigReader{configurationFileName: configurationFileName}
	configuration := configurationReader.ReadConfig()

	output := FileOutput{}
	output.CreateFile(configuration.OutputFileName)

	repProd := repository.New(configuration.ProdDBConnectionString)
	repPreprod := repository.New(configuration.PreProdDBConnectionString)
	ctx := context.Background()

	schemas, err := repProd.GetSchemas(ctx)

	if err != nil {
		log.Println(err)
	}

	for _, schema := range schemas {

		tables, err := repProd.GetTables(ctx, schema.Name)
		if err != nil {
			log.Fatal(err)
		}

		for _, tableName := range tables {
			columns, err := repProd.GetColumns(ctx, tableName, schema.Name)
			if err != nil {
				log.Println(err)

				continue
			}

			constraints, err := repProd.GetConstraints(ctx, tableName)
			if err != nil {
				log.Println(err)

				continue
			}

			table := model.BuildTableData(tableName, columns, constraints)

			itemsProd, err := repProd.GetTableItems(ctx, table, schema.Name)
			if err != nil {
				log.Fatal(err, table)
			}

			itemsPreprod, err := repPreprod.GetTableItems(ctx, table, schema.Name)
			if err != nil {
				log.Fatal(err, table)
			}

			rowsToInsert := make([]model.Item, 0)
			found := false

			for _, preprodItem := range itemsPreprod {
				for _, prodItem := range itemsProd {
					if found {
						break
					}

					if !CompareConstraints(table, prodItem, preprodItem) {
						continue
					}

					itemsToUpdate := make(map[string]interface{})
					for _, column := range table.Columns {
						valueProd, okProd := prodItem.Columns[column.Name]
						valuePreprod, okPreprod := preprodItem.Columns[column.Name]

						if okProd && okPreprod && !reflect.DeepEqual(valueProd, valuePreprod) {
							itemsToUpdate[column.Name] = valuePreprod
						}
					}

					if len(itemsToUpdate) == 0 {
						found = true
						break
					}

					builder := sq.Update(GetFullTableName(&schema, &table)).PlaceholderFormat(sq.Question)
					for k := range itemsToUpdate {
						builder = builder.Set(k, itemsToUpdate[k])
					}

					if len(table.Constrains) == 0 {
						for _, column := range table.Columns {
							builder = builder.Where(sq.Eq{column.Name: preprodItem.Columns[column.Name]})
						}
					} else {
						for _, constraint := range table.Constrains {
							builder = builder.Where(sq.Eq{constraint.ColumnName: preprodItem.Columns[constraint.ColumnName]})
						}
					}

					sql, args, err := builder.ToSql()
					if err != nil {
						log.Println(err)
					}

					sql = PrepareSQL(sql, args)

					convertedItemsToUpdate := make(map[string]string)
					for k, item := range itemsToUpdate {
						convertedItemsToUpdate[k] = ConvertInterfaceToString(item)
					}
					log.Println("[UPDATE] A match was found, but there is a difference in the data. Updating the row in "+tableName, "on", convertedItemsToUpdate)
					output.OutputLn(configuration.OutputFileName, sql)

					found = true
					break
				}

				if !found {
					rowsToInsert = append(rowsToInsert, preprodItem)

					columns := make([]string, len(table.Columns))
					values := make([]interface{}, len(table.Columns))
					for i, column := range table.Columns {
						columns[i] = column.Name

						values[i] = preprodItem.Columns[column.Name]
					}

					sql, args, err := sq.Insert(GetFullTableName(&schema, &table)).Columns(columns...).Values(values...).ToSql()

					if err != nil {
						log.Println(err)

						continue
					}

					sql = PrepareSQL(sql, args)
					log.Println("[INSERT] No match found, add a row to "+tableName, "with values", ConvertToNormalString(values))
					output.OutputLn(configuration.OutputFileName, sql)
				}

				found = false

			}

			rowsToDelete := make([]model.Item, 0)
			found = false

			for _, prodItem := range itemsProd {

				for _, preprodItem := range itemsPreprod {
					if found {
						break
					}

					found = CompareConstraints(table, prodItem, preprodItem)
				}

				if !found {
					rowsToDelete = append(rowsToDelete, prodItem)

					builder := sq.Delete("").From(GetFullTableName(&schema, &table))

					if len(table.Constrains) == 0 {
						for _, column := range table.Columns {
							builder = builder.Where(sq.Eq{column.Name: prodItem.Columns[column.Name]})
						}
					} else {
						for _, constraint := range table.Constrains {
							builder = builder.Where(sq.Eq{constraint.ColumnName: prodItem.Columns[constraint.ColumnName]})
						}
					}

					sql, args, err := builder.ToSql()

					if err != nil {
						log.Println(err)

						continue
					}

					convertedRowsToDelete := make(map[int]string)
					for k, row := range rowsToDelete {
						convertedRowsToDelete[k] = ConvertInterfaceToString(row)
					}

					sql = PrepareSQL(sql, args)
					log.Println("[DELETE] No match found PROD -> PREPROD, delete a row in "+tableName, "with values", convertedRowsToDelete)
					output.OutputLn(configuration.OutputFileName, sql)
				}

				found = false
			}
		}
	}

}

func PrepareSQL(sql string, args []interface{}) string {
	for i := range args {
		var arg string

		switch args[i].(type) {
		case nil:
			arg = "NULL"
		case []byte:
			arg = fmt.Sprintf("'%s'", strings.TrimSpace(string(args[i].([]byte))))
		default:
			arg = fmt.Sprintf("%v", args[i])
		}

		sql = strings.Replace(sql, "?", arg, 1)
	}

	return sql
}

func ConvertToNormalString(args []interface{}) string {
	var result string

	for i := range args {
		arg := ConvertInterfaceToString(args[i])

		result += arg + " "
	}

	return result
}

func ConvertInterfaceToString(arg interface{}) string {
	var result string

	switch arg.(type) {
	case nil:
		result = "NULL"
	case []byte:
		result = fmt.Sprintf("'%s'", strings.TrimSpace(string(arg.([]byte))))
	default:
		result = fmt.Sprintf("%v", arg)
	}

	return result
}

func CompareConstraints(table model.Table, prodItem, preprodItem model.Item) bool {
	if len(table.Constrains) == 0 {
		for _, column := range table.Columns {
			if !reflect.DeepEqual(preprodItem.Columns[column.Name], prodItem.Columns[column.Name]) {
				return false
			}
		}
	}

	for _, constraint := range table.Constrains {
		if !reflect.DeepEqual(preprodItem.Columns[constraint.ColumnName], prodItem.Columns[constraint.ColumnName]) {
			return false
		}
	}

	return true
}

const separator = "."

func GetFullTableName(schema *model.Schema, table *model.Table) string {
	return schema.Name + separator + table.Name
}
