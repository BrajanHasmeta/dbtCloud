{% macro update_description() %}
UPDATE {{ source('TEST_DB', 'DBT') }}
SET description = 'updated' WHERE id=1;
{% endmacro %}
