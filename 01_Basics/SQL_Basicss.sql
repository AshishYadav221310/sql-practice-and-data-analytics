
create database [SQl Basics Questions]

use  [SQl Basics Questions]



create database [SQL Basics Questions]

use [SQL Basics Questions]

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES
(1, 'John', 'Doe', 'HR', 55000.00),
(2, 'Jane', 'Smith', 'IT', 75000.00),
(3, 'Emily', 'Jones', 'Finance', 65000.00),
(4, 'Michael', 'Brown', 'IT', 80000.00),
(5, 'Sarah', 'Davis', 'HR', 60000.00),
(6, 'David', 'Wilson', 'Finance', 70000.00),
(7, 'Laura', 'Garcia', 'IT', 72000.00),
(8, 'Robert', 'Miller', 'HR', 58000.00),
(9, 'Sophia', 'Martinez', 'Finance', 67000.00),
(10, 'James', 'Anderson', 'IT', 81000.00);

-- how do you select all columns from table
select * from Employees

--select firstname and last from table
select firstname, lastname from Employees

-- find employee work in IT Department
select * from Employees where Department = 'IT'
select * from Employees where Department like 'IT'

-- employees salary greater than 70000
select * from Employees where salary > 70000

--sort result by lastname in ascending order
select * from Employees order by LastName

--select distinct department from employees table
select distinct department from Employees 

--count the number of employees in each department
select Department,count(*) [ No. of employees] from Employees
group by Department

select Department,count(EmployeeID) [ No. of employees]
from Employees
group by Department

-- find maxium salary in employee
select max(salary) [Maxium Salary] from Employees

--find average salary of employees in "finance' Department
select avg(salary) from Employees where Department = 'Finance'

-- employees whose lastname start with "M"
select * from Employees where LastName like 'm%'

select * from Employees where LastName like '%a'


--Q1. Find the total number of employees.
select  count(employee_id) from employees
select count(employee_id) [Total Employee] from employees
--Q2. Find the average salary of all employees.
select avg(salary) [Average Salary] from employees
select avg(salary) [Average Salary] from employees
--Q3. Find the highest salary.
select max(salary) [Higest Salary] from employees
select max(salary) [Highest Salary] from employees
--Q4. Find the lowest salary.
select min(salary) [Lowest Salary] from employees
select min(salary) [Lowest Salary] from employees
--Q5. Find the total of all employee salaries.
select sum(salary) [Total Salary] from employees
select sum(salary) [Total Salary] from employees



select * from Employees

--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from Employees where department = 'IT' and salary >75000
--or
select * from Employees where department in ('IT') and salary >75000


--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from employees where department in ('HR') or Salary <60000
select * from employees where department in ('HR') or Salary < 60000


--3. How do you select employees who do not work in the 'Finance' department?
select * from Employees where Department not in ('Finance')

--or
select * from Employees where not Department = 'Finance'

--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from Employees where Department = 'Finance' and salary between 60000 and 70000


--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from Employees where Department like 'IT' and Salary <= 80000

--or
select * from Employees where Department in ('IT') and not salary>80000


--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select * from Employees where (Department = 'HR' or Department = 'Finance') and salary >= 65000
 

--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from Employees where LastName like 'd%' and Department not in ('HR')


--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
select * from Employees where Department not in  ('IT') and salary > 70000


--9. How do you select employees who work in the 'IT' department and either have a salary greater 
--than 75,000 or have the first name 'Laura'?
select * from Employees where Department = 'IT' and salary>75000 or FirstName = 'Laura'


--10. How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from Employees where Department not in  ('HR','IT')
