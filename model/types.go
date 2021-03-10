package model

type Column struct {
	Name          string  `db:"column_name"`
	Type          string  `db:"data_type"`
	ColumnDefault *string `db:"column_default"`
	Nullable      string  `db:"is_nullable"`

	ConstraintType *string
}

type Constraint struct {
	ColumnName     string `db:"column_name"`
	Type           string `db:"data_type"`
	ConstraintType string `db:"constraint_type"`
}

type Table struct {
	Name       string
	Columns    []Column
	Constrains []Constraint
}

type Schema struct {
	Name string `db:"nspname"`
}

type Relation struct {
	FKTableName string `db:"fk_table_name"`
	PKTableName string `db:"primary_table_name"`
}

func BuildTableData(name string, columns []Column, constrains []Constraint) Table {
	table := Table{
		Name:       name,
		Columns:    make([]Column, len(columns)),
		Constrains: constrains,
	}

	constraintsMap := make(map[string]string, len(constrains))
	for _, constraint := range constrains {
		constraintsMap[constraint.ColumnName] = constraint.ConstraintType
	}

	for i, col := range columns {
		if constraint, ok := constraintsMap[col.Name]; ok {
			col.ConstraintType = &constraint
		}

		table.Columns[i] = col
	}

	return table
}

type Item struct {
	Columns map[string]interface{}
}
