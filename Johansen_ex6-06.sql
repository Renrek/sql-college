SELECT 
    p.product_name,
    (SUM(p.list_price) - SUM(discount_amount)) * quantity AS total
FROM order_items oi
JOIN products p USING (product_id)
GROUP BY product_name WITH ROLLUP;