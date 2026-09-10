-- Question 10:
-- Which products have the highest refund rates?


SELECT
    p.product_name,
    COUNT(DISTINCT oi.order_item_id) AS total_items_sold,
    COUNT(DISTINCT r.order_item_id) AS refunded_items,
    ROUND(
        100.0 * COUNT(DISTINCT r.order_item_id)
        / COUNT(DISTINCT oi.order_item_id),
        2
    ) AS refund_rate_pct
FROM "order_items.csv" AS oi
JOIN "products.csv" AS p
    ON oi.product_id = p.product_id
LEFT JOIN "order_item_refunds.csv" AS r
    ON oi.order_item_id = r.order_item_id
GROUP BY p.product_name
ORDER BY refund_rate_pct DESC
