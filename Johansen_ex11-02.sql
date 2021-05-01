DROP DATABASE IF EXISTS my_web_db;
CREATE DATABASE my_web_db;
USE my_web_db;

CREATE TABLE users
(
	user_id	INT PRIMARY KEY,
    email_address VARCHAR(100) UNIQUE,
    first_name VARCHAR(45),
    last_name VARCHAR(45)
) 
CHARSET utf8 COLLATE utf8_general_ci 
ENGINE = InnoDB;

CREATE INDEX users_full_name ON users (first_name, last_name);

CREATE TABLE products
(
	product_id	INT PRIMARY KEY,
    product_name VARCHAR(45) UNIQUE
)
CHARSET utf8 COLLATE utf8_general_ci 
ENGINE = InnoDB;

CREATE TABLE downloads
(
	download_id	INT PRIMARY KEY,
    user_id INT,
    download_date DATETIME,
    filename VARCHAR(50),
    product_id INT,
    CONSTRAINT downloads_user_id
		FOREIGN KEY (user_id)
        REFERENCES users (user_id),
	CONSTRAINT downloads_product_id
		FOREIGN KEY (product_id)
        REFERENCES products (product_id)
) 
CHARSET utf8 COLLATE utf8_general_ci 
ENGINE = InnoDB;
