# Retail Sales Performance Analysis

## Project Overview

This project analyzes retail sales data from 2022 through 2024 using SQL. The goal was to evaluate overall business performance, compare sales and profit across categories and regions, identify top-selling products, and analyze yearly performance.

## Dataset

The dataset contains 3,500 retail sales records from 2022 through 2024.

Key fields include:
- Order Date
- Product Name
- Category
- Region
- Quantity
- Sales
- Profit

## Tools & SQL Skills

- SQL
- Aggregate functions: SUM and AVG
- GROUP BY
- ORDER BY
- LIMIT
- ROUND
- CAST
- Date functions

## Key Findings

### Overall Performance
- Total Sales: **$10.67 million**
- Total Profit: **$1.84 million**
- Average Sales per Record: **$3,047.97**
- Average Profit per Record: **$527.05**

### Category Performance
Electronics was the highest-performing category with approximately **$5.33 million in sales** and **$923,185.59 in profit**.

Accessories generated approximately **$4.25 million in sales**, while Office generated approximately **$1.09 million**.

### Regional Performance
The West was the highest-performing region with approximately **$2.84 million in sales** and **$495,358.73 in profit**.

Sales were relatively balanced across all four regions, with the North generating the lowest sales at approximately **$2.49 million**.

### Top-Selling Products
The five highest-selling products were:

1. Camera — **$1,177,381**
2. Monitor — **$1,160,048**
3. Printer — **$1,094,216**
4. Mouse — **$1,074,398**
5. Smartphone — **$1,069,681**

### Yearly Performance
- 2022: **$3.26M sales | $572,856.98 profit**
- 2023: **$3.79M sales | $666,866.42 profit**
- 2024: **$3.63M sales | $604,941.81 profit**

Sales and profit both increased from 2022 to 2023 before declining slightly in 2024. **2023 was the strongest year for both sales and profit.**

## Business Takeaways

- Electronics is the company's strongest product category and contributes roughly half of total sales.
- The West is the highest-performing region, although performance is relatively balanced geographically.
- Camera and Monitor are the two highest-selling individual products.
- Sales and profit peaked in 2023, making the decline in 2024 an area worth further investigation.

## SQL Analysis

The SQL analysis includes six business questions covering:

1. Total sales and profit
2. Sales and profit by category
3. Sales and profit by region
4. Top-selling products
5. Average sales and profit
6. Sales and profit by year

The complete SQL queries are available in `01_sales_analysis.sql`.

## Conclusion

This project demonstrates the use of fundamental SQL techniques to analyze retail sales data and turn the results into clear business insights.
