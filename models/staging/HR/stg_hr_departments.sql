
SELECT 
    *
FROM {{ source('HR', 'departments') }}