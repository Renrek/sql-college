SELECT 
    c.email_address,
    COUNT(DISTINCT oi.product_id) AS distinct_products
FROM order_items oi
JOIN orders o USING (order_id)
JOIN customers c USING (customer_id)
GROUP BY c.email_address
HAVING distinct_products > 1;