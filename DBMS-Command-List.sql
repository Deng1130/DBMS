#######SQL COMMANDS#######

#####DATABASE#####
#Create Database
CREATE DATABASE database_name;

#Delete/Drop Database
DROP DATABASE database_name;

#Use Database
USE database_name;

#Set Database to Read-Only
ALTER DATABASE database_name READ ONLY = 1; #Set READ ONLY to 0 to make it writable

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

#####TABLE#####
#CREATE TABLE - DATATYPES: INT, VARCHAR(length), TIME, DATE, DECIMAL(Digits,decimalDigits)
CREATE TABLE tableName (
    student_id INT,             
    first_name VARCHAR(20),     
    start_time TIME,            
    birthdate DATE,             
    phone_number VARCHAR(11),   
    email VARCHAR(100)          
);

---------------------------------------------------------------------------------------------------------

###ALTER TABLE COMMANDS###
#Add Column to Table
ALTER TABLE tableName
ADD birthdate DATE;


#Move Column in Table
ALTER TABLE tableName
MODIFY birthdate DATE
AFTER last_name;

ALTER TABLE tableName
MODIFY email VARCHAR(100)
FIRST;

#Rename Column in Table
ALTER TABLE tableName
RENAME COLUMN phone_number TO email;

#Modify/Change Column Data Type
ALTER TABLE tableName
MODIFY COLUMN email VARCHAR(100);

#Delete/Drop Column in Table
ALTER TABLE tableName
DROP COLUMN columnName;

#Update a Table
UPDATE tableName
SET columnName = columnValue
WHERE columnName =columnValue;

#Delete/Drop data from the Table
DELETE FROM tableName
WHERE columnName = columnValue;

#Add Constraint to a Column - CONSTRAINTS: UNIQUE, NOT NULL, CHECK
ALTER TABLE columnName
ADD CONSTRAINT UNIQUE (product_name);

#Add Check Constraint
ALTER TABLE employees
ADD CONSTRAINT check_hourly_pay CHECK (hourly_pay >= 275);

#Delete/Drop Check Constraint
ALTER TABLE employees
DROP CHECK chck_hourly_pay;


---------------------------------------------------------------------------------------------------------

#Insert Rows to Table
INSERT INTO tableName
VALUES (dataValues);

INSERT INTO tableName
VALUES (dataValues),
(dataValues),
(dataValues);

---------------------------------------------------------------------------------------------------------


###SELECT###
#Show everything/all rows of Table
SELECT * FROM tableName;

#Show specific rows from Table
SELECT column1, column2, column3
FROM tableName;


SELECT * FROM NameOfTable
WHERE columnName = columnValue;






