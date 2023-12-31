WITH source AS (

    SELECT * FROM Instacart.public.customers
),
name_merge AS (
    SELECT customer_id,
        CONCAT(first_name, ' ', last_name) AS customer_name,
        email,
        address,
        phone_number,
        city,
        country
FROM source
)

SELECT * FROM name_merge