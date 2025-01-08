{% macro update_description_to_null() %}
    {% set table_ref = source('test', 'DBT') %}  -- Reference your source table

    {% do log("Starting UPDATE operation on DBT table", info=True) %}

    -- Execute the UPDATE statement to set 'description' to NULL
    EXECUTE IMMEDIATE '
        UPDATE ' || {{ table_ref }} || '
        SET description = NULL
    ';

    {% do log("UPDATE operation completed", info=True) %}
{% endmacro %}
