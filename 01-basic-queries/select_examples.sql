-- Basic SELECT statement
SELECT * FROM users;

-- SELECT with specific columns
SELECT username, email FROM users;

-- SELECT with WHERE clause
SELECT * FROM orders WHERE total_amount > 100;

-- SELECT with ORDER BY
SELECT product_name, price FROM products ORDER BY price DESC;