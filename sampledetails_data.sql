USE sales_order_analytics;

-- Customers

INSERT INTO customers
(customer_id, name, email, city, signup_date)
VALUES
(1, 'Arun Kumar', 'arun@gmail.com', 'Chennai', '2025-01-10'),
(2, 'Priya Sharma', 'priya@gmail.com', 'Coimbatore', '2025-02-15'),
(3, 'Rahul Raj', 'rahul@gmail.com', 'Madurai', '2025-03-20'),
(4, 'Divya S', 'divya@gmail.com', 'Salem', '2025-04-05'),
(5, 'Karthik M', 'karthik@gmail.com', 'Trichy', '2025-05-12'),
(6, 'Sneha R', 'sneha@gmail.com', 'Chennai', '2025-06-18'),
(7, 'Vijay Kumar', 'vijay@gmail.com', 'Erode', '2025-07-22'),
(8, 'Meena P', 'meena@gmail.com', 'Coimbatore', '2025-08-10'),
(9, 'Surya K', 'surya@gmail.com', 'Salem', '2025-09-14'),
(10, 'Anitha R', 'anitha@gmail.com', 'Madurai', '2025-10-25');


-- Products

INSERT INTO products
(product_id, product_name, category, price, stock)
VALUES
(1, 'Laptop', 'Electronics', 55000.00, 25),
(2, 'Smartphone', 'Electronics', 25000.00, 40),
(3, 'Headphones', 'Electronics', 2500.00, 60),
(4, 'Keyboard', 'Accessories', 1500.00, 50),
(5, 'Mouse', 'Accessories', 800.00, 75),
(6, 'Backpack', 'Bags', 1800.00, 35),
(7, 'Smart Watch', 'Wearables', 4500.00, 30),
(8, 'Shoes', 'Fashion', 3000.00, 45),
(9, 'T-Shirt', 'Fashion', 900.00, 80),
(10, 'Power Bank', 'Electronics', 1200.00, 55);


-- Orders

INSERT INTO orders
(order_id, customer_id, order_date, status, total_amount)
VALUES
(101, 1, '2026-01-05', 'COMPLETED', 57500.00),
(102, 2, '2026-01-12', 'COMPLETED', 25000.00),
(103, 3, '2026-01-20', 'COMPLETED', 4300.00),
(104, 4, '2026-02-03', 'COMPLETED', 3300.00),
(105, 5, '2026-02-15', 'PENDING', 4500.00),
(106, 6, '2026-02-25', 'COMPLETED', 1800.00),
(107, 7, '2026-03-08', 'COMPLETED', 5700.00),
(108, 8, '2026-03-18', 'CANCELLED', 3000.00),
(109, 9, '2026-04-02', 'COMPLETED', 1200.00),
(110, 10, '2026-04-15', 'COMPLETED', 26800.00);


-- Order Items

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 101, 1, 1, 55000.00),
(2, 101, 4, 1, 1500.00),
(3, 101, 5, 1, 800.00),
(4, 102, 2, 1, 25000.00),
(5, 103, 3, 1, 2500.00),
(6, 103, 5, 2, 800.00),
(7, 104, 8, 1, 3000.00),
(8, 104, 9, 1, 900.00),
(9, 105, 7, 1, 4500.00),
(10, 106, 6, 1, 1800.00),
(11, 107, 7, 1, 4500.00),
(12, 107, 5, 1, 800.00),
(13, 108, 8, 1, 3000.00),
(14, 109, 10, 1, 1200.00),
(15, 110, 2, 1, 25000.00),
(16, 110, 3, 1, 1800.00);


-- Payments

INSERT INTO payments
(payment_id, order_id, payment_date, amount, payment_status)
VALUES
(1, 101, '2026-01-05', 57300.00, 'PAID'),
(2, 102, '2026-01-12', 25000.00, 'PAID'),
(3, 103, '2026-01-20', 4100.00, 'PAID'),
(4, 104, '2026-02-03', 3900.00, 'PAID'),
(5, 105, '2026-02-15', 4500.00, 'PENDING'),
(6, 106, '2026-02-25', 1800.00, 'PAID'),
(7, 107, '2026-03-08', 5300.00, 'PAID'),
(8, 108, '2026-03-18', 3000.00, 'REFUNDED'),
(9, 109, '2026-04-02', 1200.00, 'PAID'),
(10, 110, '2026-04-15', 26800.00, 'PAID');
