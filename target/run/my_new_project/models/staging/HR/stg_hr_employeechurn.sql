
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_hr_employeechurn
  
   as (
    SELECT 
    *
FROM HR.public.employeechurn
  );

