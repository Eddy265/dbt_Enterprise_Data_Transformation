
  
    

        create or replace transient table curated.dev.profit_revenue_dept
         as
        (--profit generated by departments


WITH pro AS (
  SELECT *
  FROM curated.dev.stg_products
),
departments AS (
  SELECT *
  FROM curated.dev.stg_department
),
orders as (
    select * from curated.dev.fct_orders
),
aisles as (
  select * from curated.dev.stg_aisles
)
SELECT  
	    department,
     --COALESCE(department, 'Total Profit') as department,
      SUM(profit) AS profit,
      SUM(order_total_amount) AS total_revenue
FROM pro 
JOIN departments d ON pro.department_id = d.department_id

JOIN aisles ON pro.aisle_id = aisles.aisle_id

JOIN orders o on pro.product_id = o.product_id

GROUP BY 1
--GROUP BY ROLLUP (department) 

ORDER BY profit desc

--OFFSET 1
        );
      
  