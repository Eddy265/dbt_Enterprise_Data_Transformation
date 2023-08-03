
  
    

        create or replace transient table curated.PRODUCTION.cltv
         as
        (--customer life time value



WITH products AS (
    SELECT * FROM curated.PRODUCTION.stg_products 
),
orders AS (
    SELECT * FROM HR.dev.fct_orders 
),

customers AS (
    SELECT *
    FROM curated.PRODUCTION.stg_customers
),

cltv AS (
    SELECT CONCAT(first_name, ' ', last_name) AS customer_name,
            COUNT(order_id) AS number_of_orders,
            sum(order_total_amount) AS cltv
    FROM orders o
    JOIN products USING (product_id)
    JOIN customers c on o.customer_id = c.customer_id
    GROUP BY 1
    ORDER BY cltv desc
)

SELECT * FROM cltv
        );
      
  