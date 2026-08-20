USE Olist;

-- =========================================
-- 1. AVERAGE DELIVERY TIME
-- =========================================

SELECT
    AVG(
        DATEDIFF(
            DAY,
            order_purchase_timestamp,
            order_delivered_customer_date
        ) * 1.0
    ) AS avg_delivery_days,

    MIN(
        DATEDIFF(
            DAY,
            order_purchase_timestamp,
            order_delivered_customer_date
        )
    ) AS min_delivery_days,

    MAX(
        DATEDIFF(
            DAY,
            order_purchase_timestamp,
            order_delivered_customer_date
        )
    ) AS max_delivery_days
FROM orders
WHERE
    order_delivered_customer_date IS NOT NULL;


-- =========================================
-- 2. ON-TIME VS LATE DELIVERY
-- =========================================

SELECT
    CASE
        WHEN order_delivered_customer_date
             <= order_estimated_delivery_date
            THEN 'On Time'
        ELSE 'Late'
    END AS delivery_status,

    COUNT(*) AS total_orders

FROM orders

WHERE
    order_delivered_customer_date IS NOT NULL
    AND order_estimated_delivery_date IS NOT NULL

GROUP BY
    CASE
        WHEN order_delivered_customer_date
             <= order_estimated_delivery_date
            THEN 'On Time'
        ELSE 'Late'
    END;


-- =========================================
-- 3. DELIVERY STATUS VS REVIEW SCORE
-- =========================================

SELECT
    CASE
        WHEN o.order_delivered_customer_date
             <= o.order_estimated_delivery_date
            THEN 'On Time'
        ELSE 'Late'
    END AS delivery_status,

    COUNT(*) AS reviewed_orders,

    AVG(
        r.review_score * 1.0
    ) AS avg_review_score

FROM orders o

JOIN order_reviews r
    ON o.order_id = r.order_id

WHERE
    o.order_delivered_customer_date IS NOT NULL
    AND o.order_estimated_delivery_date IS NOT NULL

GROUP BY
    CASE
        WHEN o.order_delivered_customer_date
             <= o.order_estimated_delivery_date
            THEN 'On Time'
        ELSE 'Late'
    END;


-- =========================================
-- 4. REVIEW SCORE DISTRIBUTION
-- =========================================

SELECT
    review_score,
    COUNT(*) AS total_reviews,

    COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM order_reviews)
        AS review_percentage

FROM order_reviews

GROUP BY
    review_score

ORDER BY
    review_score DESC;