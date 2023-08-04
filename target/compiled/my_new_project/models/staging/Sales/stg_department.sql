WITH source AS (
    SELECT 
    *
    FROM Instacart.public.department
),
renamed AS (
    SELECT 
    department_id,
    department
    FROM source
)

SELECT * FROM renamed