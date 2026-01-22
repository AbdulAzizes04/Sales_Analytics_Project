CREATE DATABASE chocolate_sales_db1;
USE chocolate_sales_db1;
CREATE TABLE sales (
    sales_person VARCHAR(100),
    country VARCHAR(50),
    product VARCHAR(100),
    date DATE,
    amount FLOAT,
    boxes_shipped INT,
    month INT,
    year INT,
    revenue_per_box FLOAT
);
SELECT * FROM chocolate_sales_db1.sales;
SELECT COUNT(*) FROM sales;
SELECT SUM(amount) AS total_revenue FROM sales;
SELECT country, SUM(amount) AS revenue
FROM sales
GROUP BY country
ORDER BY revenue DESC;
SELECT sales_person, SUM(amount) AS revenue
FROM sales
GROUP BY sales_person
ORDER BY revenue DESC
LIMIT 10;
SELECT month, SUM(amount) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
SELECT product, SUM(boxes_shipped) AS total_boxes
FROM sales
GROUP BY product
ORDER BY total_boxes DESC;