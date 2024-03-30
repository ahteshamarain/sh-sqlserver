create database db;
use db;
CREATE TABLE emp (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
Alter table emp add Hiredate datetime;


create table Department(
 DepartmentID int primary key,
 DepartmentName varchar (50),
);

INSERT INTO Department(DepartmentID,DepartmentName) VALUES(1,'hr'),(2,'admin'),(3,'developer'),(4,'designer'),(5,'programmer'),(6,'science'),(7,'engineer');

insert into Emp (EmployeeID ,FirstName ,LastName, DepartmentID , salary, Hiredate) values
(1, 'John', 'Doe', 1, 50000.00,20),
(2, 'Jane', 'Smith', 2, 60000.00, 21),
(3, 'Michael', 'Johnson', 1, 55000.00, 18),
(4, 'Emily', 'Brown', 3, 48000.00, 12),
(5, 'Christopher', 'Davis', 2, 62000.00, 11),
(6, 'Jessica', 'Wilson', 1, 51000.00, 3),
(7, 'David', 'Martinez', 3, 47000.00, 1),
(8, 'Jennifer', 'Taylor', 2, 58000.00, 7),
(9, 'Daniel', 'Anderson', 1, 53000.00, 9),
(10, 'Lisa', 'Thomas', 3, 49000.00, 23),
(11, 'umar', 'khan', 4, 50000.00, 28),
(12, 'hammad', 'choudry', 3, 55000.00, 16);





select *from emp;
select *from Department;
UPDATE emp set salary = salary * 1.10 where DepartmentID = 3;

DELETE From emp where salary < 30000;
SELECT * from emp AS e INNER JOIN Department AS d ON d.DepartmentID = E.DepartmentID;
SELECT FirstName,LastName,DepartmentName,salary from emp AS e INNER JOIN Department AS d ON d.DepartmentID = E.DepartmentID;
SELECT * from emp AS e LEFt JOIN Department AS d ON d.DepartmentID = E.DepartmentID;
SELECT * from emp AS e Right JOIN Department AS d ON d.DepartmentID = E.DepartmentID;
SELECT * from emp AS e INNER JOIN Department AS d ON d.DepartmentID = E.DepartmentID where EmployeeID = 3;
SELECT FirstName,LastName,Hiredate from emp where Hiredate = 20;





