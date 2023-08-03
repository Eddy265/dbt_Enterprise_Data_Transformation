
  create or replace   view curated.PRODUCTION.stg_departments
  
   as (
    select 
    *
from Instacart.public.department
  );

