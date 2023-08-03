
  create or replace   view curated.dev.stg_hr_departments
  
   as (
    SELECT 
    *
FROM HR.public.departments
  );

