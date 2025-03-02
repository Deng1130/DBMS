CREATE DATABASE Laptop_cpe;
USE Laptop_cpe;
CREATE TABLE Logbook (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    section VARCHAR(50),
    start_time TIME,
    date_borrow DATE,
    end_time TIME,
    date_return DATE
);

INSERT INTO Logbook
VALUES (2023400001, "Gian", "Gumatay", "CPE-2B", "07:00:00", "2025-02-14", "23:00:00", "2025-02-14"),
(2023400002, "Richard", "Gueco", "CPE-2B", "09:00:00", "2025-02-17", "23:00:00", "2025-02-17"),
(2023400003, "Jhared", "Galvez", "CPE-2B", "09:00:00", "2025-02-14", "13:00:00", "2025-02-14"),
(2023400004, "Andei Bert", "Vizmanos", "CPE-2B", "13:00:00", "2025-02-14", "16:00:00", "2025-02-14"),
(2023400005, "Renzo", "Quines", "CPE-2B", "12:00:00", "2025-02-14", "14:00:00", "2025-02-14")
;

SELECT * FROM Logbook
WHERE date_borrow = '2025-02-14' AND date_return = '2025-02-14';







