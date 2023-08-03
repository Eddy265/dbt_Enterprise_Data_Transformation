
  create or replace   view curated.dev.stg_products
  
   as (
    select 
    *
from Instacart.public.products
  );

