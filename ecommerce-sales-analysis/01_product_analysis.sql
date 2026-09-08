-- E-Commerce Sales & Marketing Analysis
-- Product Analysis

-- Question 1:
-- What is total revenue by product?

SELECT p.product_name, SUM(oi.price_usd) AS total_revenue
  FROM "order_items.csv" AS oi
    JOIN "products.csv" AS p
      ON oi.product_id = p.product_id
        GROUP BY p.product_name
          ORDER BY total_revenue DESC


---------------------------------------------------------------------
-- Question 2:
-- Which products generate the most revenue relative to
-- how long they have been available?


SELECT p.product_name, p.created_at AS launch_date,
    SUM(oi.price_usd) AS total_revenue,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    ROUND(
        SUM(oi.price_usd) /DATE_DIFF('day', CAST(p.created_at AS DATE), MAX(CAST(oi.created_at AS DATE))),
        2) 
  AS revenue_per_day
    FROM "order_items.csv" AS oi
      JOIN "products.csv" AS p
        ON oi.product_id = p.product_id
GROUP BY
    p.product_name,
    p.created_at
ORDER BY revenue_per_day DESC

------------------------------------------------------------------------------
-- Question 3:
-- Which products generate the most gross profit,
-- and which have the highest gross profit margins?

SELECT p.product_name,
    ROUND(SUM(oi.price_usd), 2) AS total_revenue,
    ROUND(SUM(oi.cogs_usd), 2) AS total_cogs,
    ROUND(SUM(oi.price_usd - oi.cogs_usd), 2) AS gross_profit,
    ROUND(100.0 * SUM(oi.price_usd - oi.cogs_usd) / SUM(oi.price_usd),2)
  AS gross_margin_pct
    FROM "order_items.csv" AS oi
      JOIN "products.csv" AS p
        ON oi.product_id = p.product_id
          GROUP BY p.product_name
            ORDER BY gross_profit DESC
--------------------------------------------------------------------------------------

