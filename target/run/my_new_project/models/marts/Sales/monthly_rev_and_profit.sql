
  
    

        create or replace transient table curated.dev.monthly_rev_and_profit
         as
        (


WITH monthly_rev_profit AS (
    SELECT
        date_trunc('month', order_date)::date as months,
        SUM(order_total_amount) AS Total_Revenue,
        SUM(profit) AS Total_profit
    FROM curated.dev.fct_orders
    GROUP BY date_trunc('month', order_date)::date
)

SELECT * FROM monthly_rev_profit
        );
      
  