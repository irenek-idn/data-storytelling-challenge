CREATE DATABASE Employees;
USE Employees;

CREATE TABLE EmployeeData (
EmployeeID INT PRIMARY KEY auto_increment,
FirstName varchar(100),
LastName varchar(100),
Age int constraint age_check check (age >='18'),
Department varchar(100),
Salary decimal(3,2),
EmploymentDate DATE 
);

SELECT * FROM EmployeeData;

INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('John','Smith',38,'Credit',4.50,'2008-10-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Jane','Myers',35,'Operations',6.50,'2015-02-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Frank','Delfino',25,'HR',8.50,'2023-01-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Wesley','Snipes',28,'Credit',5.50,'2020-10-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Laurel','Gibbins',32,'Credit',7.50,'2018-05-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Miriam','Kaman',28,'Operations',4.50,'2022-10-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Brian','Sendo',24,'Finance',6.50,'2024-02-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Sandra','Juma',29,'Finance',9.50,'2022-10-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Susan','House',34,'HR',7.50,'2018-03-01');
INSERT INTO EmployeeData (FirstName,LastName,Age,Department,Salary,EmploymentDate) VALUES ('Mary','White',33,'Legal',9.50,'2016-03-01');

SELECT FirstName, LastName, Age,Salary FROM EmployeeData;

SELECT FirstName, LastName, Salary FROM EmployeeData WHERE Department='Credit';

SELECT * FROM EmployeeData ORDER BY Salary ASC;

SELECT * FROM EmployeeData ORDER BY Salary DESC LIMIT 3;

SELECT DISTINCT Department FROM EmployeeData;

SELECT * FROM EmployeeData WHERE Department = 'Operations' OR Salary > 7.50;

SELECT FirstName, LastName, EmploymentDate FROM EmployeeData ORDER BY Age ASC LIMIT 2;

SELECT DISTINCT Department FROM EmployeeData ORDER BY Department ASC;


