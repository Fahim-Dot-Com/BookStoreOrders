-- Recent orders
SELECT c.name, o.order_date, b.title
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN books b ON o.book_id = b.book_id
WHERE o.order_date >= DATE('now', '-30 days');

-- Top books
SELECT b.title, COUNT(*) AS order_count
FROM orders o
JOIN books b ON o.book_id = b.book_id
GROUP BY b.title
ORDER BY order_count DESC
LIMIT 3;

-- Orders by author
SELECT b.author, COUNT(*) AS total_orders
FROM orders o
JOIN books b ON o.book_id = b.book_id
GROUP BY b.author;
