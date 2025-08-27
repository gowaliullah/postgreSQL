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
(3, 101, '2023-02-18', 45.25),
(4, 103, '2024-03-19', 250.75),
(5, 104, '2024-03-20', 30.99),
(6, 105, '2024-03-21', 155.80),
(7, 102, '2024-02-22', 89.90),
(8, 106, '2024-03-23', 500.00),
(9, 101, '2023-04-24', 22.50),
(10, 107, '2024-04-25', 18.75),
(11, 108, '2023-06-26', 99.99),
(12, 109, '2023-06-27', 175.50);


-- query for find whoch customner there order more than 2 and the total spend cost
SELECT customer_id, COUNT(order_id), sum(total_amount) as total_spent FROM orders
    GROUP BY customer_id
    HAVING COUNT(*) > 1;


-- find the total order amount for each month in the year 2024
SELECT extract(month from order_date) as month, sum(total_amount) FROM orders
    WHERE extract(year from order_date) = 2024
    GROUP BY month;
SELECT extract(month from order_date) as month, sum(total_amount) FROM orders
    GROUP BY month;