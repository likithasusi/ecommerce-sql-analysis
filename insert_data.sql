INSERT INTO customers (customer_name, email, city, signup_date) VALUES
('Ravi Kumar', 'ravi@gmail.com', 'Hyderabad', '2024-01-10'),
('Anita Sharma', 'anita@gmail.com', 'Bangalore', '2024-01-15'),
('Rahul Mehta', 'rahul@gmail.com', 'Mumbai', '2024-02-01'),
('Sneha Reddy', 'sneha@gmail.com', 'Chennai', '2024-02-10'),
('Amit Verma', 'amit@gmail.com', 'Delhi', '2024-02-20');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 55000),
('Smartphone', 'Electronics', 25000),
('Headphones', 'Accessories', 3000),
('Office Chair', 'Furniture', 7000),
('Smart Watch', 'Accessories', 8000);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-03-01'),
(2, '2024-03-02'),
(1, '2024-03-05'),
(3, '2024-03-06'),
(4, '2024-03-08');

INSERT INTO order_details (order_id, product_id, quantity) VALUES
(1, 1, 1),   
(1, 3, 2),   
(2, 2, 1),   
(3, 5, 1),   
(3, 3, 1),   
(4, 4, 1),   
(5, 2, 1);   

INSERT INTO payments (order_id, customer_id, order_date, payment_method, payment_status) VALUES
(1, 1, '2024-03-01', 'UPI', 'Success'),
(2, 2, '2024-03-02', 'Credit Card', 'Success'),
(3, 1, '2024-03-05', 'Debit Card', 'Success'),
(4, 3, '2024-03-06', 'UPI', 'Failed'),
(5, 4, '2024-03-08', 'Net Banking', 'Success');
