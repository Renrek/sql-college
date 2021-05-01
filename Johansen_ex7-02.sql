SELECT product_name, list_price
FROM products p
WHERE p.list_price > (SELECT AVG(list_price) FROM products p)
ORDER BY list_price DESC;
