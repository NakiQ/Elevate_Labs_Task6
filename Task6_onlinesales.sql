create database order_sql;
use order_sql;

create table online_sales(
order_id int,
order_date date,
product_id int,
amount decimal(10,2)
);

INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(1, '2023-01-05', 101, 250.00),
(2, '2023-01-15', 102, 300.00),
(3, '2023-02-02', 103, 150.00),
(4, '2023-02-20', 104, 400.00),
(5, '2023-03-12', 101, 220.00),
(6, '2023-03-25', 105, 500.00),
(7, '2023-04-10', 103, 180.00),
(8, '2023-04-18', 106, 350.00),
(9, '2023-05-05', 107, 275.00),
(10, '2023-05-22', 108, 450.00);

select * from online_sales;

SELECT 
    order_id,
    order_date,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    amount
FROM online_sales;

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS monthly_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_orders
FROM online_sales
WHERE order_date BETWEEN '2023-03-01' AND '2023-04-30'
GROUP BY year, month
ORDER BY year, month;




