SELECT 
	NOW() AS today_unformated, 
    DATE_FORMAT(NOW(), '%e-%b-%Y') AS today_formated;