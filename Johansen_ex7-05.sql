SELECT t1.product_name, t1.discount_percent 
FROM products t1
WHERE (SELECT count(t2.discount_percent) FROM products t2 WHERE t2.discount_percent = t1.discount_percent) < 2