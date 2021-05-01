#ex10-02 did not request AUTO_INCREMENT to be added for user_id in users or product_id in products, manually need to include it within INSERT.
INSERT INTO users
    (user_id, email_address, first_name, last_name)
VALUES
    (1, 'johnsmith@gmail.com', 'John', 'Smith'),
    (2, 'janedoe@yahoo.com', 'Jane', 'Doe');
    
INSERT INTO products
    (product_id, product_name)
VALUES
    (1, 'Local Music Vol 1'),
    (2, 'Local Music Vol 2');
    
INSERT INTO downloads
    (download_id, user_id, download_date, filename, product_id)
VALUES
    (1, 1, NOW(), 'pedals_are_falling.mp3', 1),
    (2, 2, NOW(), 'turn_signal.mp3', 1),
    (3, 2, NOW(), 'one_horse_town.mp3', 2);
    
SELECT email_address, first_name, last_name, download_date, filename, product_name
FROM users
JOIN downloads USING (user_id)
JOIN products USING (product_id)
ORDER BY email_address ASC;