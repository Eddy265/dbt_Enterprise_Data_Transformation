
  create or replace   view curated.dev.stg_aisles
  
   as (
    --USE WAREHOUSE Enterprise_Data_Integration;

SELECT 
    aisle_id,
    aisle
FROM Instacart.public.aisles
  );

