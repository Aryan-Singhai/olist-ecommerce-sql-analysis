USE Olist;

-- =========================================
-- 1. MONTHLY REVENUE & ORDER VOLUME
-- =========================================

SELECT
    YEAR(o.order_purchase_timestamp) AS order_year,
    MONTH(o.order_purchase_timestamp) AS order_month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price) AS revenue,
    SUM(oi.price) / COUNT(DISTINCT o.order_id) AS avg_order_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY
    order_year,
    order_month;


-- =========================================
-- 2. ANNUAL REVENUE & AVERAGE ORDER VALUE
-- =========================================

SELECT
    YEAR(o.order_purchase_timestamp) AS order_year,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price) AS revenue,
    SUM(oi.price) / COUNT(DISTINCT o.order_id) AS avg_order_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY
    YEAR(o.order_purchase_timestamp)
ORDER BY
    order_year;


-- =========================================
-- 3. YEAR-OVER-YEAR MONTHLY COMPARISON
-- =========================================

WITH monthly_revenue AS (
    SELECT
        YEAR(o.order_purchase_timestamp) AS order_year,
        MONTH(o.order_purchase_timestamp) AS order_month,
        SUM(oi.price) AS revenue
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY
        YEAR(o.order_purchase_timestamp),
        MONTH(o.order_purchase_timestamp)
)

SELECT
    order_year,
    order_month,
    revenue,
    LAG(revenue, 12) OVER (
        PARTITION BY order_month
        ORDER BY order_year
    ) AS previous_year_revenue
FROM monthly_revenue
ORDER BY
    order_year,
    order_month;