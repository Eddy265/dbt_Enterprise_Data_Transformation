
SELECT 
    *
FROM {{ source('HR', 'salaries') }}