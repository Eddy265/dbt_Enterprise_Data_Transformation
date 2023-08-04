WITH source AS (

    SELECT * FROM Instacart.public.aisles
),

renamed as (
    SELECT 
    aisle_id,
    aisle
FROM source
)

SELECT * FROM renamed