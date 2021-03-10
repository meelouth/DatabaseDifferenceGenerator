package repository

import (
	"context"
	"fmt"
	"log"
	"olympus/model"

	sq "github.com/Masterminds/squirrel"
	"github.com/jmoiron/sqlx"
	"github.com/pkg/errors"
)

const (
	selectTables = `
        SELECT table_schema || '.' || table_name as table_name
FROM information_schema.tables
WHERE table_schema NOT IN ('pg_catalog', 'information_schema', 'public')
ORDER BY table_name
    `

	selectDescribeTableQuery = `
        SELECT column_name, data_type, column_default, is_nullable
        FROM information_schema.COLUMNS
        WHERE table_name = $1
    `

	selectConstraintsQuery = `
        SELECT c.column_name column_name,
               c.data_type data_type,
               constraint_type
        FROM information_schema.table_constraints tc
                 JOIN information_schema.constraint_column_usage AS ccu USING (constraint_schema, constraint_name)
                 JOIN information_schema.columns AS c ON c.table_schema = tc.constraint_schema
            AND tc.table_name = c.table_name AND ccu.column_name = c.column_name
        WHERE constraint_type in ('PRIMARY KEY', 'UNIQUE') and tc.table_name = $1
    `

	selectSchemasQuery = `
		SELECT nspname 
		FROM pg_catalog.pg_namespace
		WHERE nspname NOT IN ('pg_toast', 'pg_catalog', 'public', 'information_schema')
	`

	selectTablesByFKQuery = `
select distinct
fk_tco.table_schema || '.' || fk_tco.table_name as fk_table_name,
pk_tco.table_schema || '.' || pk_tco.table_name as primary_table_name
from information_schema.referential_constraints rco
join information_schema.table_constraints fk_tco
on rco.constraint_name = fk_tco.constraint_name
and rco.constraint_schema = fk_tco.table_schema
join information_schema.table_constraints pk_tco
on rco.unique_constraint_name = pk_tco.constraint_name
and rco.unique_constraint_schema = pk_tco.table_schema
where fk_tco.table_name = $1 -- enter table name here
--and fk_tco.table_schema = 'schema_name'
order by fk_table_name;`
)

type Repository struct {
	connection *sqlx.DB
}

func New(dsn string) *Repository {
	connection, err := sqlx.Open("postgres", dsn)
	if err != nil {
		log.Fatal(err)
	}

	return &Repository{
		connection: connection,
	}
}

func (r *Repository) GetTables(ctx context.Context) ([]string, error) {
	var tables []string
	err := r.connection.SelectContext(ctx, &tables, selectTables)
	if err != nil {
		return nil, errors.Wrap(err, "list tables query execution failed")
	}

	return tables, nil
}

func (r *Repository) GetRelations(ctx context.Context, table string) ([]model.Relation, error) {
	var tables []model.Relation
	err := r.connection.SelectContext(ctx, &tables, selectTablesByFKQuery, table)
	if err != nil {
		return nil, errors.Wrap(err, "get fk tables query execution failed")
	}

	return tables, nil
}

func (r *Repository) GetColumns(ctx context.Context, tableName string) ([]model.Column, error) {
	var columns []model.Column
	err := r.connection.SelectContext(ctx, &columns, selectDescribeTableQuery, tableName)
	if err != nil {
		return nil, errors.Wrap(err, "list columns query failed")
	}

	return columns, nil
}

func (r *Repository) GetConstraints(ctx context.Context, tableName string) ([]model.Constraint, error) {
	var constraints []model.Constraint
	err := r.connection.SelectContext(ctx, &constraints, selectConstraintsQuery, tableName)
	if err != nil {
		return nil, errors.Wrap(err, "list columns query failed")
	}

	return constraints, nil
}

func (r *Repository) GetSchemas(ctx context.Context) ([]model.Schema, error) {
	var schemas []model.Schema
	err := r.connection.SelectContext(ctx, &schemas, selectSchemasQuery)

	if err != nil {
		return nil, errors.Wrap(err, "list schemas query failed")
	}

	return schemas, err
}

func (r *Repository) GetTableItems(ctx context.Context, table model.Table, database string) ([]model.Item, error) {
	columns := make([]string, len(table.Columns))
	for i, col := range table.Columns {
		if col.Name != "" {
			columns[i] = col.Name
		}
	}

	if len(columns) == 0 {
		return nil, errors.New("no columns to select")
	}

	builder := sq.Select(columns...).From(fmt.Sprintf("%s.%s", database, table.Name))

	sql, args, err := builder.ToSql()
	if err != nil {
		return nil, errors.Wrap(err, "can't builder sql query")
	}

	rows, err := r.connection.QueryxContext(ctx, sql, args...) // args[0], args[1], ...
	if err != nil {
		return nil, errors.Wrap(err, "can't exec table items error")
	}

	results := make([]model.Item, 0)
	for rows.Next() {
		mp := make(map[string]interface{})

		err := rows.MapScan(mp)
		if err != nil {
			log.Fatal(err)
			continue
		}

		results = append(results, model.Item{
			Columns: mp,
		})
	}

	return results, nil
}
