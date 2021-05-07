DROP TABLE customers;

CREATE TABLE custormers
(
	customer_id 			INT AUTO_INCREMENT,
    first_name 				VARCHAR(255),
    last_name 				VARCHAR(255),
    email_address 			VARCHAR(255),
    number_of_complaints 	INT,
PRIMARY KEY (customer_id)
);

-- or

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Peter', 'Figaro', 'M');

SELECT 
	* 
FROM 
	customers;

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;

CREATE TABLE companies
(
	company_id 					VARCHAR(255),
    company_name 				VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number 	VARCHAR(255),
PRIMARY KEY (company_id),
UNIQUE KEY (headquarters_phone_number)
);

DROP TABLE companies;