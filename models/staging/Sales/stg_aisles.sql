--USE WAREHOUSE Enterprise_Data_Integration;

SELECT 
    aisle_id,
    aisle
FROM {{ source('Instacart', 'aisles') }}