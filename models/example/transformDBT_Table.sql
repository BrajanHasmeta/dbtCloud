with
    updated_data as (
        select id, 'BRAJAN' as description  -- Set the description column to NULL
        from {{ source("test", "DBT") }}  -- Reference the source table
    )

select *
from updated_data