CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
)


DROP TABLE orders;

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 101, '2023-01-15', 75.50),
(2, 102, '2023-01-16', 120.00),
(3, 101, '2023-01-18', 45.25),
(4, 103, '2023-01-19', 250.75),
(5, 104, '2023-01-20', 30.99),
(6, 105, '2023-01-21', 155.80),
(7, 102, '2023-01-22', 89.90),
(8, 106, '2023-01-23', 500.00),
(9, 101, '2023-01-24', 22.50),
(10, 107, '2023-01-25', 18.75),
(11, 108, '2023-01-26', 99.99),
(12, 109, '2023-01-27', 175.50);



SELECT customer_id, COUNT(order_id), sum(total_amount) as total_spent FROM orders
    GROUP BY customer_id
    HAVING COUNT(*) > 1;
