SELECT c.last_name, c.first_name, o.order_date, p.product_name, oi.item_price, oi.discount_amount, oi.quantity
FROM order_items oi
LEFT JOIN orders o ON (oi.order_id = o.order_id)
LEFT JOIN customers c ON (c.customer_id = o.customer_id)
LEFT JOIN products p ON (p.product_id = oi.product_id)
ORDER BY c.last_name, o.order_date, p.product_name ASC;