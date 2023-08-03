
  create or replace   view curated.dev.stg_orders
  
   as (
    select 
    *
from Instacart.public.orders
  );

