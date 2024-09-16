-- Insert test data into users table
INSERT INTO users (id, username, email) VALUES
(1, 'john_doe', 'john@example.com'),
(2, 'jane_smith', 'jane@example.com'),
(3, 'bob_johnson', 'bob@example.com');

-- Insert test data into orders table
INSERT INTO orders (id, user_id, total_amount, order_date) VALUES
(1, 1, 150.00, '2023-01-15'),
(2, 2, 75.50, '2023-01-16'),
(3, 1, 200.00, '2023-01-17');

-- Insert test data into products table
INSERT INTO products (id, name, price, category) VALUES
(1, 'Smartphone', 500.00, 'Electronics'),
(2, 'T-shirt', 20.00, 'Clothing'),
(3, 'Book', 15.00, 'Books');