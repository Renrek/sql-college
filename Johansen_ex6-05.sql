SELECT 
	c.email_address, c.customer_id,
    COUNT(DISTINCT order_id) AS orders,
    (SUM(oi.item_price) - SUM(oi.discount_amount)) * quantity AS total
FROM orders o
JOIN customers c USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.item_price > 400
GROUP BY c.customer_id
HAVING orders > 1;
