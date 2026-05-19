-- Create table
CREATE TABLE sales (
    id INT,
    product VARCHAR(50),
    amount INT,
    region VARCHAR(50)
);

-- Insert values
INSERT INTO sales VALUES
(1, 'Laptop', 50000, 'South'),
(2, 'Phone', 20000, 'North'),
(3, 'Tablet', 15000, 'West'),
(4, 'Laptop', 55000, 'East');

-- Total sales by product
SELECT product, SUM(amount) AS total_sales
FROM sales
GROUP BY product;

-- Highest sale
SELECT *
FROM sales
ORDER BY amount DESC;