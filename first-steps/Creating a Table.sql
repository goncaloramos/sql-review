CREATE TABLE IF NOT EXISTS sales
(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    intem_code VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS 	customers
(
	customer_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email_address VARCHAR(255) NOT NULL,
    number_of_complains INT
);

-- Drop table example

DROP TABLE sales;