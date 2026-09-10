

-- Question 1:
-- How much total sales and profit did the business generate?

SELECT 
 ROUND ( SUM ("Sales"),2) AS total_sales,
 ROUND ( SUM ("Profit"),2) AS total_profit 
FROM "ecommerce_sales_data .csv"


-- Question 2:
-- Which product categories generate the most sales and profit?


SELECT
    "Category",
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(SUM("Profit"), 2) AS total_profit
FROM "ecommerce_sales_data .csv"
  GROUP BY "Category"
    ORDER BY total_sales DESC

-- Question 3:
-- Which regions generate the most sales and profit?

SELECT
    "Region",
    ROUND(SUM("Sales"), 2) AS total_sales,
    ROUND(SUM("Profit"), 2) AS total_profit
FROM "ecommerce_sales_data .csv"
  GROUP BY "Region"
    ORDER BY total_sales DESC

