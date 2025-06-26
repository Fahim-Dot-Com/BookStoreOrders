# 📚 Bookstore Orders SQL Project

This is a bookstore-style database setup focused on order tracking. It demonstrates customer relationships, order processing, and reporting for authors and books.

## 📂 Schema Overview

- `customers` – Contains customer contact info
- `books` – Book names, prices, authors
- `orders` – Tracks who bought what and when

## Sample Query
```sql
SELECT b.title, COUNT(*) AS order_count
FROM orders o
JOIN books b ON o.book_id = b.book_id
GROUP BY b.title
ORDER BY order_count DESC;
```

## ⚙️ Technologies Used

- SQLite / PostgreSQL / MySQL
- INNER JOINs, time-based queries, sorting

## 🔍 Key Queries

- Most frequently ordered books
- Monthly order totals
- Orders by author

## 📄 Files Included

- `schema.sql` – Sets up all tables and data
- `queries.sql` – Extracts insights from mock data

## 💡 Use Case

Great for simulating online store order management or customer behavior insights for analytics prep.
