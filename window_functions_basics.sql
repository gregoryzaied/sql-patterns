-- Simple window function examples

-- Running total
SELECT
    id,
    amount,
    SUM(amount) OVER (ORDER BY id) AS running_total
FROM payments;

-- Row number per customer
SELECT
    customer_id,
    order_id,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS order_index
FROM orders;