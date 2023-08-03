
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_customers
  
   as (
    SELECT customer_id,
        CONCAT(first_name, ' ', last_name) AS customer_name,
        email,
        address,
        phone_number
FROM Instacart.public.customers
  );

