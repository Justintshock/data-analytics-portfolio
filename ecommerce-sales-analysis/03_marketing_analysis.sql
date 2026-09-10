
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





--------------------------------------------------------------------------
-- Question 7:
-- How does performance compare across paid search,organic search, direct traffic, and paid social?


SELECT
    CASE
        WHEN ws.utm_source IN ('gsearch', 'bsearch') THEN 'Paid Search'
        WHEN ws.utm_source = 'socialbook' THEN 'Paid Social'
        WHEN ws.utm_source = 'NULL'
             AND ws.http_referer IN ('https://www.gsearch.com', 'https://www.bsearch.com')
             THEN 'Organic Search'
        WHEN ws.utm_source = 'NULL'
             AND ws.http_referer = 'NULL'
             THEN 'Direct'
        ELSE 'Other'
    END AS marketing_channel,

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

GROUP BY
    CASE
        WHEN ws.utm_source IN ('gsearch', 'bsearch') THEN 'Paid Search'
        WHEN ws.utm_source = 'socialbook' THEN 'Paid Social'
        WHEN ws.utm_source = 'NULL'
             AND ws.http_referer IN ('https://www.gsearch.com', 'https://www.bsearch.com')
             THEN 'Organic Search'
        WHEN ws.utm_source = 'NULL'
             AND ws.http_referer = 'NULL'
             THEN 'Direct'
        ELSE 'Other'
    END

ORDER BY total_revenue DESC


--------------------------------------------------------------------------------------------

-- Question 8:
-- How does sales performance compare between desktop and mobile visitors?

SELECT
    ws.device_type,
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
GROUP BY ws.device_type
ORDER BY conversion_rate_pct DESC

-----------------------------------------------------------------------------------------------

-- Question 9:
-- Do repeat visitors convert better than new visitors?

SELECT
    ws.is_repeat_session,
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
GROUP BY ws.is_repeat_session
ORDER BY conversion_rate_pct DESC

--------------------------------------------------------------------------------------------
