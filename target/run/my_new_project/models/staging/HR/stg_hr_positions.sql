
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_hr_positions
  
   as (
    SELECT 
    *
FROM HR.public.positions
  );

