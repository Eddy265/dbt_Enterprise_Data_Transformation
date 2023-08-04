
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_aisles
  
   as (
    WITH source AS (

    SELECT * FROM Instacart.public.aisles
),

renamed as (
    SELECT 
    aisle_id,
    aisle
FROM source
)

SELECT * FROM renamed
  );

