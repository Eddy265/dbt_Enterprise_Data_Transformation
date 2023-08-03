
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_products
  
   as (
    select 
    *
from Instacart.public.products
  );

