
  create or replace   view curated.dev.stg_hr_employeechurn
  
   as (
    SELECT 
    *
FROM HR.public.employeechurn
  );

