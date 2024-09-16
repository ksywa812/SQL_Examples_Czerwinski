-- Test for duplicate usernames
SELECT username, COUNT(*) as count
FROM users
GROUP BY username
HAVING COUNT(*) > 1;

-- Test for orders with invalid user_id
SELECT o.id as order_id, o.user_id
FROM orders o
LEFT JOIN users u ON o.user_id = u.id
WHERE u.id IS NULL;

-- Test for negative order amounts
SELECT id, total_amount
FROM orders
WHERE total_amount < 0;

-- Test for products with zero or negative prices
SELECT id, name, price
FROM products
WHERE price <= 0;