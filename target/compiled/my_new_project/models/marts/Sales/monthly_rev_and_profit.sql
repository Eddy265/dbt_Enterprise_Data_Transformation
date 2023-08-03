


WITH monthly_rev_profit AS (
    SELECT
        date_trunc('month', order_date)::date as months,
        SUM(order_total_amount) AS Total_Revenue,
        SUM(profit) AS Total_profit
    FROM PC_DBT_DB.dbt_EUzoefuna.fct_orders
    GROUP BY date_trunc('month', order_date)::date
)

SELECT * FROM monthly_rev_profit