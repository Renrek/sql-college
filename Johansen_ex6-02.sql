SELECT c.category_name AS categories, COUNT(*) AS products, MAX(p.list_price) AS most_expensive
FROM products p
JOIN categories c USING (category_id)
GROUP BY c.category_id
ORDER BY products DESC;