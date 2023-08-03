
  create or replace   view curated.dev.stg_department
  
   as (
    select 
    *
from Instacart.public.department
  );

