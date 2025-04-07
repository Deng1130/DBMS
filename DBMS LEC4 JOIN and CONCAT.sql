CREATE DATABASE april7;
USE april7;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO customers (first_name, last_name)
VALUES ("Fred", "Fish"),
	("Larry", "Lobster"),
    ("Bubble", "Bass");

CREATE TABLE transaction (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(10 , 2 ),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

ALTER TABLE transaction
DROP FOREIGN KEY transaction_ibfk_1;

ALTER TABLE transaction
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id)
	REFERENCES customers (customer_id);


DELETE FROM transaction;
SELECT 
    *
FROM
    transaction;

ALTER TABLE transaction
AUTO_INCREMENT = 1000;

INSERT INTO transaction (amount, customer_id)
VALUES (4.99, 3),
	(2.89, 2),
    (3.38, 3),
    (4.99, 1);
SELECT * FROM transaction;
    
/*DELETE FROM customers 
WHERE
    customers_id = 3;*/

INSERT INTO transaction (amount, customer_id)
VALUES (1.00, NULL);

INSERT INTO customers (first_name, last_name)
VALUES ("Poppy", "Puff");
    
    
SELECT 
    *
FROM
    transaction
        INNER JOIN
    customers ON transaction.customer_id = customers.customer_id;


SELECT 
    transaction_id, amount, first_name, last_name
FROM
    transaction
        INNER JOIN
    customers ON transaction.customer_id = customers.customer_id;


SELECT 
    transaction_id, amount, customers.customer_id
FROM
    transaction
        LEFT JOIN
    customers ON transaction.customer_id = customers.customer_id;

SELECT 
    customers.customer_id, first_name, last_name
FROM
    transaction
        RIGHT JOIN
    customers ON transaction.customer_id = customers.customer_id;


SELECT COUNT(amount)
FROM transaction;

SELECT COUNT(amount) AS count
FROM transaction;

SELECT COUNT(amount) AS “TransactionsToday”
FROM transaction;

SELECT MAX(amount) AS maximum
FROM transaction;

SELECT MIN(amount) AS minimum
FROM transaction;

SELECT AVG(amount) AS average
FROM transaction;

SELECT SUM(amount) AS sum
FROM transaction;

Select CONCAT(first_name,last_name) AS full_name
FROM customers;

Select CONCAT(first_name," ",last_name) AS full_name
FROM customers;





