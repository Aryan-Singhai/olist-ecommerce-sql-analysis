USE Olist;

-- =========================================
-- 1. TOP 10 PRODUCT CATEGORIES
-- =========================================

SELECT TOP 10
    p.product_category_name,
    SUM(oi.price) AS revenue,
    COUNT(DISTINCT oi.order_id) AS orders,
    COUNT(*) AS items_sold
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY
    p.product_category_name
ORDER BY
    revenue DESC;


-- =========================================
-- 2. CATEGORY REVENUE CONTRIBUTION
-- =========================================

WITH category_revenue AS (
    SELECT
        p.product_category_name,
        SUM(oi.price) AS revenue
    FROM order_items oi
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY
        p.product_category_name
)

SELECT
    product_category_name,
    revenue,
    revenue * 100.0 /
        SUM(revenue) OVER () AS revenue_percentage
FROM category_revenue
ORDER BY
    revenue DESC;


-- =========================================
-- 3. TOP 10 PRODUCTS BY REVENUE
-- =========================================

SELECT TOP 10
    oi.product_id,
    SUM(oi.price) AS revenue,
    COUNT(DISTINCT oi.order_id) AS orders,
    COUNT(*) AS items_sold
FROM order_items oi
GROUP BY
    oi.product_id
ORDER BY
    revenue DESC;