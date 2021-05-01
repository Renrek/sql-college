SELECT card_number, 
	LENGTH(card_number) AS length,
    RIGHT(card_number, 4) AS last_four,
	CONCAT(REPEAT('XXXX-', 3), RIGHT(card_number, 4)) AS super_secret
FROM orders
#One entry ending in "0005" has an improper length of 15 however the 
# instruction had a literal expectation of first 12 numbers and last 4 numbers.
# the incorrect information causes an overlap of the first 12 and last 4