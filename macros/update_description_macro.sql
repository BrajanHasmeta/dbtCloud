{% macro update_description() %}
    UPDATE {{ source('test','DBT') }}
    SET description = 'updated' WHERE id=1;
{% endmacro %}