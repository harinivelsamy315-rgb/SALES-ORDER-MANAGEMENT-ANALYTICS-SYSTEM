-- Insert Customers

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


-- Insert Products

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


-- Insert Orders

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
