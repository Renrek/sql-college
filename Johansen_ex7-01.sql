SELECT DISTINCT category_name
FROM categories c 
WHERE c.category_id IN (SELECT p.category_id FROM products p)
ORDER BY category_name;

