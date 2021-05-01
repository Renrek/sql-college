SELECT order_date, DATE_FORMAT(order_date, '%Y') AS year,
	DATE_FORMAT(order_date, '%b-%d-%Y') AS 'alternate_date', 
	DATE_FORMAT(order_date, '%r') AS 'clock',  
	DATE_FORMAT(order_date, '%m/%d/%y %H:%i') AS 'think'
FROM orders