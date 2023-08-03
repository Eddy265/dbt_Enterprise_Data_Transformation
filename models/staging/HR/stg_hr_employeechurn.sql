
SELECT 
    *
FROM {{ source('HR', 'employeechurn') }}