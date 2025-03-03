CREATE DATABASE employee_records;
USE employee_records;

CREATE TABLE group_3 (
	email VARCHAR(100),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	hourly_pay DECIMAL(10,2) NOT NULL,
	hired_date DATE,
	CHECK (hourly_pay > 275));

ALTER TABLE group_3
ADD COLUMN employee_id INT UNIQUE;


INSERT INTO group_3
	VALUES ("andeibertgueco@gmail.com", "Andei Bert", "Gueco", "300.00", "2025-02-25", 123001),
		("jharedgumatay@gmail.com", "Jhared Andrei", "Gumatay", "300.00", "2025-02-25", 123002),
		("richardvizmanos@gmail.com", "Richard Lorenz", "Vizmanos", "300.00", "2025-02-25", 123003),
		("giangalvez@gmail.com", "Gian", "Galvez", "300.00", "2025-02-25", 123004);
		
UPDATE group_3
	SET hourly_pay = "320.00";


INSERT INTO group_3
	VALUES ("bertgueco@gmail.com", "Bert", "Gueco", "220.00", "2025-02-25", 123005);
	
SELECT * FROM group_3;
	
