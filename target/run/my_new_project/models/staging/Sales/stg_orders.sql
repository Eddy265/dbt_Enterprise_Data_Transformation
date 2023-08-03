
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_orders
  
   as (
    WITH source AS (

    SELECT * FROM Instacart.public.orders

),

renamed as (

    SELECT order_id,
        customer_id,
        order_dow,
        order_hour_of_day,
        days_since_prior_order,
        product_id,
        quantity,
        order_date,
        order_status
    from source
)

select * from renamed
  );

