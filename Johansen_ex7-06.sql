SELECT c.email_address, o.order_id, o.order_date
FROM orders o
JOIN customers c USING (customer_id) 
WHERE  o.order_date = (SELECT MIN(t2.order_date) from orders t2 where t2.customer_id = c.customer_id)
ORDER BY o.order_date ASC;
