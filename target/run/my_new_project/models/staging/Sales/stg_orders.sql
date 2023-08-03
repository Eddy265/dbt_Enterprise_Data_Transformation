
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_orders
  
   as (
    select 
    *
from Instacart.public.orders
  );

