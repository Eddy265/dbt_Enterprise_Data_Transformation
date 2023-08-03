
  create or replace   view PC_DBT_DB.dbt_EUzoefuna.stg_aisles
  
   as (
    --USE WAREHOUSE Enterprise_Data_Integration;

SELECT 
    aisle_id,
    aisle
FROM Instacart.public.aisles
  );

