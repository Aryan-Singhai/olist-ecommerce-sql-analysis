USE Olist;

-- =========================================
-- 1. ROW COUNTS
-- =========================================

SELECT 'customers' AS table_name, COUNT(*) AS row_count
FROM customers

UNION ALL

SELECT 'orders', COUNT(*)
FROM orders

UNION ALL

SELECT 'order_items', COUNT(*)
FROM order_items

UNION ALL

SELECT 'order_payments', COUNT(*)
FROM order_payments

UNION ALL

SELECT 'order_reviews', COUNT(*)
FROM order_reviews

UNION ALL

SELECT 'products', COUNT(*)
FROM products

UNION ALL

SELECT 'sellers', COUNT(*)
FROM sellers

UNION ALL

SELECT 'product_category_translation', COUNT(*)
FROM product_category_translation;


-- =========================================
-- 2. ORDERS → CUSTOMERS
-- =========================================

SELECT COUNT(*) AS unmatched_orders_customers
FROM orders o
LEFT JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


-- =========================================
-- 3. ORDER ITEMS → ORDERS
-- =========================================

SELECT COUNT(*) AS unmatched_order_items_orders
FROM order_items oi
LEFT JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;


-- =========================================
-- 4. ORDER ITEMS → PRODUCTS
-- =========================================

SELECT COUNT(*) AS unmatched_order_items_products
FROM order_items oi
LEFT JOIN products p
    ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;


-- =========================================
-- 5. ORDER ITEMS → SELLERS
-- =========================================

SELECT COUNT(*) AS unmatched_order_items_sellers
FROM order_items oi
LEFT JOIN sellers s
    ON oi.seller_id = s.seller_id
WHERE s.seller_id IS NULL;


-- =========================================
-- 6. PAYMENTS → ORDERS
-- =========================================

SELECT COUNT(*) AS unmatched_payments_orders
FROM order_payments op
LEFT JOIN orders o
    ON op.order_id = o.order_id
WHERE o.order_id IS NULL;


-- =========================================
-- 7. REVIEWS → ORDERS
-- =========================================

SELECT COUNT(*) AS unmatched_reviews_orders
FROM order_reviews r
LEFT JOIN orders o
    ON r.order_id = o.order_id
WHERE o.order_id IS NULL;