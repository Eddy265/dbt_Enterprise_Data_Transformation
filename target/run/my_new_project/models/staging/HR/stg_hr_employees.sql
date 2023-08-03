
  create or replace   view curated.dev.stg_hr_employees
  
   as (
    SELECT 
    *
FROM HR.public.employees
  );

