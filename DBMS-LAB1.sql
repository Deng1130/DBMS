CREATE DATABASE bscpe2b;
USE bscpe2b;
CREATE TABLE group_3 (
    student_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    campus VARCHAR(30),
    birthdate DATE,
    phone_number VARCHAR(15),
    email VARCHAR(100)
);

ALTER TABLE group_3
MODIFY birthdate DATE
AFTER last_name,

MODIFY email VARCHAR(100)
FIRST;


INSERT INTO group_3
VALUES ("andeibertgueco@gmail.com", 2023400734, "Andei Bert", "Gueco", "2002-11-30", "Meneses", "09123456789"),
("giangalvez@gmail.com", 2023400566, "Gian", "Galvez", "2002-11-30", "Meneses", "09123456789"),
("jharedandreigumatay@gmail.com", 2023400644, "Jhared Andrei", "Gumatay", "2002-11-30", "Meneses", "09123456789"),
("richardlorenzvizmanos@gmail.com", 2023400513, "Richard Lorenz", "Vizmanos", "2002-11-30", "Meneses", "09123456789");

SELECT * FROM group_3;
