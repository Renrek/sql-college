SELECT category_name FROM categories WHERE NOT EXISTS (SELECT category_id FROM products);
