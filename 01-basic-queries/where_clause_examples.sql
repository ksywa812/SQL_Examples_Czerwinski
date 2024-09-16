-- Basic WHERE clause
SELECT * FROM products WHERE category = 'Electronics';

-- WHERE with multiple conditions
SELECT * FROM users WHERE age >= 18 AND country = 'USA';

-- WHERE with IN operator
SELECT * FROM orders WHERE status IN ('Shipped', 'Delivered');

-- WHERE with LIKE for pattern matching
SELECT * FROM products WHERE name LIKE '%phone%';