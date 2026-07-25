create database joinsdb; 
use joinsdb; 
CREATE TABLE Departments ( 
DepartmentID INT PRIMARY KEY, 
DepartmentName VARCHAR(50) 
); 
INSERT INTO Departments (DepartmentID, DepartmentName) 
VALUES 
(101, 'HR'), 
(102, 'IT'), 
(103, 'Finance'), 
(104, 'Marketing'); 
CREATE TABLE Employees ( 
EmployeeID INT PRIMARY KEY, 
EmployeeName VARCHAR(50), 
DepartmentID INT 
); 
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID) 
VALUES 
(1, 'Alice', 101), 
(2, 'Bob', 102), 
(3, 'Charlie', 105),   -- No matching department 
(4, 'David', NULL),    -- No department assigned 
(5, 'Eva', 101);
select * from employees;
select * from departments;
select e.employeeid , e.employeename , e.departmentid, d.departmentid ,d.departmentname from employees as e left join departments as d
on e.departmentid=d.departmentid; 
select e.employeeid , e.employeename , e.departmentid, d.departmentid ,d.departmentname from  departments as d left join employees as e
on e.departmentid=d.departmentid; 