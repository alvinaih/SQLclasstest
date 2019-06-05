CREATE DATABASE MyCompanyDB

USE MyCompanyDB

CREATE TABLE Employees
(
EmployeeID int,
Employee varchar(225),
Datestarted date,
Salary money, 
Department varchar(225),
);



SELECT * FROM Employees

INSERT INTO Employees
VALUES (101, 'Alvina', '2004-05-01', 10000.00, 'IT'),
(102, 'Kate', '2004-05-01', 10000.00, 'IT'),
(103, 'Sam', '2004-05-02', 9000.00, 'Finance'),
(104, 'Jenna', '2005-09-29', 4000.00, 'Admin'),
(105, 'Mark', '2004-04-01', 10000.00, 'IT'),
(106, 'Cathy', '2007-01-01', 8500.00, 'HR'),
(107, 'James', '2008-03-22', 12500.00, 'HR'),
(108, 'Peter', '2008-03-02', 20000.00, 'IT'),
(109, 'Wendy', '2007-04-25', 25000.00, 'IT'),
(110, 'Penny', '2004-06-01', 10000.00, 'Admin');

SELECT * FROM Employees WHERE Salary = (SELECT Max(Salary) FROM Employees)

SELECT MAX(Salary) AS 'TotalSalary' FROM Employees;

SELECT MAX(salary) AS '2nd highest' FROM Employees WHERE Salary NOT IN ( SELECT Max(Salary) FROM Employees);

SELECT * FROM Employees WHERE (EmployeeID BETWEEN '101' and '108');


SELECT Employee, Department, Salary FROM Employees WHERE Salary = (SELECT Max(Salary) FROM Employees );


SELECT max(Salary) AS 'Greatest', Department FROM Employees GROUP BY Department;








