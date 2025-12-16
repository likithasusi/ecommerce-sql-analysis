SELECT 
    SUM(p.price * od.quantity) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id;

SELECT 
    MONTH(o.order_date) AS month,
    SUM(p.price * od.quantity) AS revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY MONTH(o.order_date)
ORDER BY month;

SELECT 
    p.product_name,
    SUM(od.quantity) AS total_sold
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

SELECT 
    c.customer_name,
    SUM(p.price * od.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

SELECT 
    payment_method,
    COUNT(*) AS total_transactions
FROM payments
GROUP BY payment_method;


SELECT 
    customer_id,
    COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

SELECT 
    AVG(order_total) AS avg_order_value
FROM (
    SELECT 
        o.order_id,
        SUM(p.price * od.quantity) AS order_total
        
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    JOIN products p ON od.product_id = p.product_id
    GROUP BY o.order_id
) t;
