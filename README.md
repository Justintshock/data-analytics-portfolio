# data-analytics-portfoli# E-Commerce Sales & Marketing Analysis

## Project Overview

This project analyzes e-commerce sales, product, marketing, and website traffic data using SQL. The goal was to identify trends in revenue and profitability, evaluate marketing and website performance, and uncover opportunities to improve business performance.

The analysis covers product performance, monthly sales trends, marketing channels, website devices, repeat visitors, and product refunds.

## Dataset

The dataset comes from the Maven Analytics Toy Store E-Commerce Database and contains data for an online retailer.

The analysis uses the following tables:

- `orders.csv` – Order-level sales data
- `order_items.csv` – Individual products included in each order
- `products.csv` – Product names and launch dates
- `website_sessions.csv` – Website traffic and marketing source data
- `order_item_refunds.csv` – Product refund data

## Tools & SQL Skills

- SQL
- DuckDB / SQL Workbench
- JOIN and LEFT JOIN
- GROUP BY
- Aggregate functions including SUM and COUNT
- CASE statements
- Common Table Expressions (CTEs)
- Window functions
- Date functions
- Calculated metrics including gross margin, conversion rate, revenue growth, and refund rate

## Key Findings

### Product Performance

The Original Mr. Fuzzy was the company's largest revenue and profit driver, generating approximately **$1.21 million in revenue** and **$738.9K in gross profit**.

Because the products were launched at different times, I also compared revenue per day. The Original Mr. Fuzzy remained the strongest performer at approximately **$1,106 in revenue per day**, while the Birthday Sugar Panda generated about **$496 per day**.

Although Mr. Fuzzy generated the most total profit, the Birthday Sugar Panda had the highest gross margin at **68.49%**.

### Sales Trends

Monthly revenue increased substantially over the period analyzed, growing from approximately **$3.0K in March 2012** to a peak of approximately **$144.8K in December 2014**.

Month-over-month growth varied considerably, with periods of rapid growth as well as temporary declines.

Revenue fell sharply in March 2015, but this is the final month represented in the dataset and may contain incomplete data. Therefore, the decline should not automatically be interpreted as a deterioration in business performance.

### Marketing Performance

Gsearch nonbrand was the largest marketing revenue driver, generating approximately **$1.12 million in revenue** from about **282.7K website sessions**.

Brand campaigns converted traffic more efficiently. Bsearch brand produced the highest campaign conversion rate at **8.86%**.

The Socialbook pilot campaign significantly underperformed the other campaigns with a conversion rate of only **1.08%**.

When traffic was grouped into broader marketing channels, Paid Search generated approximately **$1.54 million in revenue** and accounted for the majority of traffic.

Organic Search had the highest overall channel conversion rate at **7.51%**, followed by Direct traffic at **7.15%**. Paid Social had the lowest conversion rate at **3.21%**.

### Device Performance

Desktop visitors significantly outperformed mobile visitors.

Desktop traffic converted at **8.50%**, compared with only **3.09%** for mobile traffic. Desktop visitors also generated approximately **$1.67 million in revenue**, compared with approximately **$272.8K from mobile visitors**.

The large difference in conversion rates suggests that the mobile shopping experience could be investigated further to identify potential barriers to purchase.

### New vs. Repeat Visitors

Repeat website sessions converted at **7.83%**, compared with **6.64%** for new sessions.

New visitors generated the majority of total revenue because they represented substantially more website traffic, but repeat visitors were more likely to complete a purchase.

### Refund Analysis

The Birthday Sugar Panda had the highest product refund rate at **6.04%**, followed by The Original Mr. Fuzzy at **5.11%**.

Although Mr. Fuzzy had the largest number of refunded items, its substantially higher sales volume resulted in a lower refund rate than the Birthday Sugar Panda.

The Hudson River Mini bear had the lowest refund rate at **1.28%**.

## Business Recommendations

Based on the analysis:

1. Investigate the mobile shopping experience because mobile visitors converted substantially below desktop visitors.

2. Continue using Paid Search as a major traffic and revenue source while evaluating opportunities to increase Organic Search traffic, which produced a higher conversion rate.

3. Review the Paid Social strategy, particularly lower-performing campaigns, before increasing investment in the channel.

4. Investigate the Birthday Sugar Panda's relatively high refund rate to determine whether product quality, customer expectations, or another factor may be contributing to refunds.

5. Explore strategies that encourage customers to return to the website because repeat sessions showed a higher conversion rate than new sessions.

## SQL Files

The SQL analysis is organized into separate files:

- `01_product_analysis.sql` – Product revenue, performance, and profitability
- `02_sales_trends.sql` – Monthly revenue trends and month-over-month growth
- `03_marketing_analysis.sql` – Marketing campaigns, traffic channels, device performance, and repeat visitors
- `04_refund_analysis.sql` – Product refund rates

## Conclusion

This project demonstrates how SQL can be used to combine multiple business datasets, calculate performance metrics, identify trends, and translate analysis into business recommendations.

The analysis identified several areas that could warrant further investigation, including mobile conversion performance, paid social effectiveness, repeat visitor behavior, and product refund rates.
