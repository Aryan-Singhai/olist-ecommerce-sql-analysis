USE Olist;

-- =========================================
-- 1. UNIQUE CUSTOMERS
-- =========================================

SELECT
    COUNT(DISTINCT customer_unique_id) AS unique_customers
FROM customers;


-- =========================================
-- 2. ONE-TIME VS REPEAT CUSTOMERS
-- =========================================

WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_unique_id
)

SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time'
        ELSE 'Repeat'
    END AS customer_type,
    COUNT(*) AS customers
FROM customer_orders
GROUP BY
    CASE
        WHEN order_count = 1 THEN 'One-time'
        ELSE 'Repeat'
    END
ORDER BY
    customers DESC;


-- =========================================
-- 3. CUSTOMER TYPE — ORDERS & REVENUE
-- =========================================

WITH customer_summary AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count,
        SUM(oi.price) AS revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY
        c.customer_unique_id
)

SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time'
        ELSE 'Repeat'
    END AS customer_type,
    COUNT(*) AS customers,
    SUM(order_count) AS orders,
    SUM(revenue) AS revenue
FROM customer_summary
GROUP BY
    CASE
        WHEN order_count = 1 THEN 'One-time'
        ELSE 'Repeat'
    END;