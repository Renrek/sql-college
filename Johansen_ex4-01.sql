SELECT category_name, product_name, list_price
FROM products
JOIN categories USING (category_id)
ORDER BY category_name, product_name ASC;