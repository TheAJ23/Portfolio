CREATE TABLE IF NOT EXISTS customer (customer_name CHAR(20),
customer_street CHAR(30), customer_city CHAR(30),
	PRIMARY KEY(CUSTOMER_NAME),
    INDEX(customer_name));
