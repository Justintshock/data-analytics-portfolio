
-- E-Commerce Sales & Marketing Analysis
-- Sales Trend Analysis

-- Question 4:
-- How have revenue, orders, and gross profit changed month by month?


SELECT
    DATE_TRUNC('month', created_at) AS month,
      COUNT(DISTINCT order_id) AS total_orders,
        ROUND(SUM(price_usd), 2) AS total_revenue,
        ROUND(SUM(price_usd - cogs_usd), 2) AS gross_profit
          FROM "order_items.csv"
            GROUP BY DATE_TRUNC('month', created_at)
              ORDER BY month ASC

--------------------------------------------------------------------------------
-- Question 5:
-- How much did revenue increase or decrease each month compared with the previous month?


WITH monthly_sales AS 
  (SELECT
        DATE_TRUNC('month', created_at) AS month,
        ROUND(SUM(price_usd), 2) AS total_revenue
    FROM "order_items.csv"
    GROUP BY DATE_TRUNC('month', created_at)
)

SELECT month,total_revenue,
    LAG(total_revenue) OVER (ORDER BY month) AS previous_month_revenue,
    ROUND(
        100.0 * (total_revenue - LAG(total_revenue) OVER (ORDER BY month))
        / LAG(total_revenue) OVER (ORDER BY month),
        2
    ) AS revenue_growth_pct
FROM monthly_sales
ORDER BY month ASC
