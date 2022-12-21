-----UC1
CREATE DATABASE Payroll_Service

-----UC2

CREATE TABLE Employee_Payroll(
Id int PRIMARY KEY IDENTITY(1,1),
Name varchar(30) NOT NULL,
Salary BIGINT NOT NULL,
Start DATE NOT NULL
);

-----UC3
INSERT INTO Employee_Payroll(Name,Salary,Start)VALUES
('Divya',50000,'2023-05-02'),
('Dhruv',58000,'2022-03-16'),
('Parth',78000,'2020-03-08');

-----UC4
SELECT * FROM Employee_Payroll

-----UC5

SELECT Salary FROM Employee_Payroll WHERE Name='Divya';
SELECT * FROM Employee_Payroll WHERE START BETWEEN CAST('2020-03-08' As DATE) AND GETDATE();

-----UC6

ALTER TABLE Employee_Payroll ADD Gender CHAR(1);
UPDATE Employee_Payroll SET Gender ='F' WHERE Name = 'Divya';
UPDATE Employee_Payroll SET Gender ='M' WHERE Name = 'Dhruv' or Name = 'Parth';



