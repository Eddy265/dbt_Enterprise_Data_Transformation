

WITH product AS (
    SELECT product_id, unit_price, unit_cost
    FROM curated.dev.stg_products 
),

orders AS (
    SELECT order_id,
           customer_id,
           product_id,
           quantity,
           order_date
    FROM curated.dev.stg_orders
),

FINAL AS (
    SELECT o.order_id, 
           o.customer_id,
           o.product_id,
           o.order_date,
           o.quantity,
           p.unit_price,
           p.unit_cost,
           o.quantity * p.unit_price AS order_total_amount,
           p.unit_price - p.unit_cost AS profit 
    FROM product p 
    JOIN orders o ON p.product_id = o.product_id
    
    WHERE order_id >= (SELECT max(order_id) FROM curated.dev.fct_orders)
    
    ORDER BY order_id DESC
)

SELECT * FROM FINAL