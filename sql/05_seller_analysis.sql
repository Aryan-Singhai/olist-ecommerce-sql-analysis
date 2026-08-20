USE Olist;

-- =========================================
-- 1. TOP 10 SELLERS BY REVENUE
-- =========================================

SELECT TOP 10
    s.seller_id,
    SUM(oi.price) AS revenue,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    COUNT(*) AS items_sold
FROM sellers s
JOIN order_items oi
    ON s.seller_id = oi.seller_id
GROUP BY
    s.seller_id
ORDER BY
    revenue DESC;


-- =========================================
-- 2. RANK ALL SELLERS BY REVENUE
-- =========================================

WITH seller_revenue AS (
    SELECT
        seller_id,
        SUM(price) AS revenue
    FROM order_items
    GROUP BY
        seller_id
)

SELECT
    seller_id,
    revenue,
    RANK() OVER (
        ORDER BY revenue DESC
    ) AS seller_rank
FROM seller_revenue
ORDER BY
    seller_rank;