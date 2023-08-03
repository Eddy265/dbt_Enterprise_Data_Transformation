
  create or replace   view curated.dev.stg_aisles
  
   as (
    select 
    aisle_id,
    aisle
from Instacart.public.aisles
  );

