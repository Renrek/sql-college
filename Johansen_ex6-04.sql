SELECT 
	c.email_address,
    COUNT(DISTINCT order_id) AS orders,
    (SUM(oi.item_price) - SUM(oi.discount_amount)) * quantity AS total
FROM orders o
JOIN customers c USING (customer_id)
JOIN order_items oi USING (order_id)
GROUP BY c.customer_id
HAVING orders > 1
ORDER BY total DESC;
