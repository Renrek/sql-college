SELECT 
	c.email_address, 
	SUM(oi.item_price) * quantity AS item_price_total, 
	SUM(oi.discount_amount) * quantity AS discount_total
FROM orders o
JOIN customers c USING (customer_id)
JOIN order_items oi USING (order_id)
GROUP BY c.customer_id
ORDER BY item_price_total DESC;
