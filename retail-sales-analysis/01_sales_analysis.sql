

-- Question 1:
-- How much total sales and profit did the business generate?

SELECT 
 ROUND ( SUM ("Sales"),2) AS total_sales,
 ROUND ( SUM ("Profit"),2) AS total_profit 
FROM "ecommerce_sales_data .csv"

