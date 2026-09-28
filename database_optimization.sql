USE sales_order_analytics;

-- 1. Create Customer Order Report View

CREATE VIEW customer_order_report AS
SELECT
    c.customer_id,
    c.name,
    o.order_id,
    o.order_date,
    o.status,
    o.total_amount
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id;


-- 2. View Customer Order Report

SELECT *
FROM customer_order_report;


-- 3. Create Index for Customer ID

CREATE INDEX idx_orders_customer_id
ON orders(customer_id);


-- 4. Check Query Execution Plan

EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 1;


-- 5. Product Performance Analysis

SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity) AS total_quantity,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_name, p.category
ORDER BY total_sales DESC;


-- 6. Average Order Value

SELECT
    status,
    AVG(total_amount) AS average_order_value
FROM orders
GROUP BY status;


-- 7. Orders Above Average Value

SELECT
    order_id,
    customer_id,
    total_amount
FROM orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM orders
);


-- 8. Top 3 Customers

SELECT
    c.name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.status = 'COMPLETED'
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;
