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
