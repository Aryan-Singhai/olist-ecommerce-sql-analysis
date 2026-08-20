USE Olist;

-- =========================================
-- 1. PAYMENT METHOD PERFORMANCE
-- =========================================

SELECT
    payment_type,
    COUNT(*) AS payment_transactions,
    SUM(payment_value) AS total_payment_value,
    AVG(payment_value) AS avg_payment_value
FROM order_payments
GROUP BY
    payment_type
ORDER BY
    total_payment_value DESC;


-- =========================================
-- 2. PAYMENT INSTALLMENT BEHAVIOR
-- =========================================

SELECT
    payment_installments,
    COUNT(*) AS transactions,
    SUM(payment_value) AS payment_value
FROM order_payments
GROUP BY
    payment_installments
ORDER BY
    payment_installments;