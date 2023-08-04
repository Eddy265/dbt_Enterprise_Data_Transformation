
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_department
  
   as (
    WITH source AS (
    SELECT 
    *
    FROM Instacart.public.department
),
renamed AS (
    SELECT 
    department_id,
    department
    FROM source
)

SELECT * FROM renamed
  );

