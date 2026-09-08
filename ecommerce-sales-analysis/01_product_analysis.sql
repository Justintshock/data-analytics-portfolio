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
