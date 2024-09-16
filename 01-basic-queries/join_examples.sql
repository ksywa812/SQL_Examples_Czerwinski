-- INNER JOIN
SELECT orders.id, users.username, orders.total_amount
FROM orders
INNER JOIN users ON orders.user_id = users.id;

-- LEFT JOIN
SELECT users.username, orders.id
FROM users
LEFT JOIN orders ON users.id = orders.user_id;

-- Multiple joins
SELECT orders.id, users.username, products.name
FROM orders
JOIN users ON orders.user_id = users.id
JOIN order_items ON orders.id = order_items.order_id
JOIN products ON order_items.product_id = products.id;