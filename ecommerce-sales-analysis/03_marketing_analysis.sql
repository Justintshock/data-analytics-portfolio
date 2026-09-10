
-- E-Commerce Sales & Marketing Analysis
-- Marketing Channel Analysis

-- Question 6:
-- Which marketing sources and campaigns generate the most traffic, orders, revenue, and conversions?

SELECT ws.utm_source,ws.utm_campaign,
    COUNT(DISTINCT ws.website_session_id) AS total_sessions,
    COUNT(DISTINCT o.order_id) AS total_orders,
      ROUND(SUM(o.price_usd), 2) AS total_revenue,
      ROUND(
        100.0 * COUNT(DISTINCT o.order_id)
        / COUNT(DISTINCT ws.website_session_id),
        2
    ) AS conversion_rate_pct
        FROM "website_sessions.csv" AS ws
          LEFT JOIN "orders.csv" AS o
            ON ws.website_session_id = o.website_session_id
              GROUP BY ws.utm_source, ws.utm_campaign
                ORDER BY total_revenue DESC
