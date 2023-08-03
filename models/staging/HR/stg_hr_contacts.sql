
SELECT 
    *
FROM {{ source('HR', 'contacts') }}