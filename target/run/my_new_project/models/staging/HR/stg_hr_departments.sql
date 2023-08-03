
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_hr_departments
  
   as (
    SELECT 
    *
FROM HR.public.departments
  );

