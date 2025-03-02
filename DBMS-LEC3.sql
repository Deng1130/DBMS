CREATE DATABASE LecConstraints;
USE dateNtime;

CREATE TABLE dateTable (
my_date DATE,
my_time TIME,
my_datetime DATETIME
);

INSERT INTO dateTable
VALUES (CURRENT_DATE(), CURRENT_TIME(), NOW(),	#Current Date and Time
	(CURRENT_DATE()+1, NULL, NULL),				#Date Tomorrow
	(CURRENT_DATE()-1, NULL, NULL)				#Date Yesterday
);	

SELECT * FROM dateTable;

#############################################################################################

CREATE TABLE products (
product_id INT,
product_name VARCHAR (25) UNIQUE,
price DECIMAL (4,2) NOT NULL
);

ALTER TABLE products
ADD CONSTRAINT
UNIQUE (product_name);


INSERT INTO products
VALUES (1, "hamburger", "25"),
(2, "Footlong", "25"),
(3, "Siomai", "25"),
(4, "Fries", "15");


ALTER TABLE products
MODIFY price DECIMAL (4,2) NOT NULL;

INSERT INTO products
VALUES (5, "Gulaman", 0);
SELECT * FROM products;

#############################################################################################

CREATE TABLE employees (
employee_id INT,
first_name VARCHAR (50),
last_name VARCHAR (50),
hourly_pay DECIMAL (4,2),
hired_date DATE,
CHECK (hourly_pay = 275));

ALTER TABLE employees
ADD CONSTRAINT check_hourly_pay CHECK (hourly_pay >= 275);

INSERT INTO employees
VALUES (3, "sheldon", "plankton", 280.00, "2025-02-22");

SELECT * FROM employees;

