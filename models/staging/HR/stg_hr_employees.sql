SELECT 
    *
FROM {{ source('HR', 'employees') }}