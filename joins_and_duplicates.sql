-- Basic join patterns and how duplicates appear

-- Inner join: only matching rows
SELECT o.id, c.name
FROM orders o
JOIN customers c ON o.customer_id = c.id;

-- Left join: unmatched rows become NULL
SELECT o.id, c.name
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id;

-- Quick way to spot duplicates
SELECT customer_id, COUNT(*)
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;