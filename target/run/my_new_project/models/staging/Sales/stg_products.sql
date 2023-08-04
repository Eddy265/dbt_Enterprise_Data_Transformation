
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_products
  
   as (
    WITH source AS (

    SELECT * FROM Instacart.public.products
),

renamed AS (
    SELECT product_id,
        product_name,
        department_id,
        aisle_id,
        unit_price,
        unit_cost
FROM source
)

SELECT * FROM renamed
  );

