{% set database = target.database %}
{% set schema = target.schema %}

SELECT
table_type
, table_schema
, table_name
, last_altered
, case 
    when table_type = 'VIEW' then table_type
    else 'TABLE'
    end as drop_type
, 'DROP ' || drop_type || ' {{ database | upper }}.' || table_schema || '.' || table_name || ';' AS query
FROM {{ database }}.information_schema.tables
WHERE 1 = 1
AND table_schema = UPPER('{{ schema }}')
ORDER BY last_altered DESC
