SELECT c.email_address, o.order_id , (SELECT SUM((oi.item_price - oi.discount_amount) * quantity) AS total FROM order_items oi WHERE oi.order_id = o.order_id ) AS order_total 
FROM  orders o 
JOIN customers c USING (customer_id)
GROUP BY c.email_address, o.order_id;

SELECT t1.email_address, MAX(t1.order_total) AS largest_order FROM(
SELECT c.email_address, o.order_id , (SELECT SUM((oi.item_price - oi.discount_amount) * quantity) AS total FROM order_items oi WHERE oi.order_id = o.order_id ) AS order_total 
FROM  orders o 
JOIN customers c USING (customer_id)
GROUP BY c.email_address, o.order_id) t1
group by t1.email_address;