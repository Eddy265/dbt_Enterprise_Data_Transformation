
  create or replace   view curated.dev.stg_employees
  
   as (
    SELECT 
    *
FROM HR.public.employees
  );

