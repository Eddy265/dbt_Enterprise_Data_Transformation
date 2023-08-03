SELECT 
    *
FROM {{ source('HR', 'positions') }}