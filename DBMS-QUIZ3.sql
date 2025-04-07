CREATE DATABASE Meneses_Campus;
USE Meneses_Campus;

CREATE TABLE BSCPE_2B(
	student_id INT UNIQUE NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    section VARCHAR(20),
    course_id VARCHAR(20),
    balance DECIMAL(10,2),
    instructor_id INT,
	CHECK (balance = 0 OR balance >= 600)
    );

INSERT INTO BSCPE_2B
	VALUES (1, "Dave", "Ramos", "BSCPE 1A", "CPE 101", "601", 001),
		(2, "Kurt", "Villar", "BSCPE 2A", "CPE 102", "786", 002),
		(3, "Clint", "Gomez", "BSCPE 3A", "CPE 103", "997", 003),
		(4, "Anna", "Cruz", "BSCPE 4A", "CPE 104", "845", 004);



INSERT INTO BSCPE_2B
	VALUES (5, "Andei Bert", "Gueco", "BSCPE 2B", "CPE 105", "0", 005);
    
SELECT * FROM BSCPE_2B;
