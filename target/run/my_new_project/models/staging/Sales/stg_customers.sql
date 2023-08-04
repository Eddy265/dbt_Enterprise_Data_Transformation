
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_customers
  
   as (
    WITH source AS (

    SELECT * FROM Instacart.public.customers
),
name_merge AS (
    SELECT customer_id,
        CONCAT(first_name, ' ', last_name) AS customer_name,
        email,
        address,
        phone_number
FROM source
)

SELECT * FROM name_merge
  );

