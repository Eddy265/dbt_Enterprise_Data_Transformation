
  create or replace   view curated.dev.stg_hr_salaries
  
   as (
    SELECT 
    *
FROM HR.public.salaries
  );

