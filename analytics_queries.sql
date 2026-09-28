USE sales_order_analytics;

-- 1. Total Revenue

SELECT 
    SUM(total_amount) AS total_revenue
FROM orders
WHERE status = 'COMPLETED';


-- 2. Total Number of Orders

SELECT 
    COUNT(*) AS total_orders
FROM orders;


-- 3. Monthly Sales Revenue

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS revenue
FROM orders
WHERE status = 'COMPLETED'
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;


-- 4. Top Selling Products

SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;


-- 5. Customer Performance

SELECT
    c.name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;


-- 6. Order Status Analysis

SELECT
    status,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_amount
FROM orders
GROUP BY status;


-- 7. Payment Status Analysis

SELECT
    payment_status,
    COUNT(payment_id) AS total_payments,
    SUM(amount) AS total_amount
FROM payments
GROUP BY payment_status;


-- 8. Customer Ranking

SELECT
    c.name,
    SUM(o.total_amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(o.total_amount) DESC) AS customer_rank
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.status = 'COMPLETED'
GROUP BY c.name;


-- 9. Month-over-Month Revenue

WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(total_amount) AS revenue
    FROM orders
    WHERE status = 'COMPLETED'
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue
FROM monthly_sales
ORDER BY month;


-- 10. Running Total Revenue

SELECT
    order_date,
    order_id,
    total_amount,
    SUM(total_amount) OVER (
        ORDER BY order_date, order_id
    ) AS running_total
FROM orders
WHERE status = 'COMPLETED'
ORDER BY order_date, order_id;
