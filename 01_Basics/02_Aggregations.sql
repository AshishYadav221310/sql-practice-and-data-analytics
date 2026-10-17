create database int_prep
use int_prep

create table employees(
	employee_id int primary key,
	name varchar(50),
	department varchar(50),
	job_title varchar(50),
	salary varchar(50),
	city varchar(50),
	joining_date date
)

--Find the number of employees in each department.
select department, count(employee_id) [No of Employees] from employees group by department
select department, count(employee_id) [Employee Count] from employees group by department

--Find the average salary for each city.
select city, avg(salary) [Average Salary] from employees group by city
select city, avg(salary) [Aberage Salary] from employees group by city
--Find departments where the total salary expense is greater than ₹250,000.
select department, sum(salary) [Total Salary Expense] from employees group by department having sum(salary) > 250000
select department, sum(salary) [Total Salary] from employees group by department having sum(salary) > 250000
--Find cities that have at least 2 employees AND an average salary greater than ₹70,000.
select city, count(employee_id) [Employee Cpount], avg(salary) [Average Salary] from employees group by city 
having count(employee_id) >= 2 and avg(salary) > 70000
select city,count(employee_id) [Employee Count], avg(salary) [Average Salary] from employees group by city
having count(employee_id) >=2 and avg(salary) > 70000
--Find the department with the highest total salary expense.
select top 1 department, sum(salary) [Higest Salary] from employees group by department order by sum(salary) desc 
select top 1 department, sum(salary) from employees group by department order by sum(salary) desc

--Q6. Find the number of employees in each department.
select department, count(employee_id) from employees group by department
select department, count(employee_id) [No of Employees] from employees group by department
--Q7. Find the average salary for each department.
select department, avg(salary) [Average Salary] from employees group by department
--Q8. Find the highest salary in each department.
select department, max(salary) [Highest Salary] from employees group by department
--Q9. Show only departments where the average salary is greater than 75,000.
select department, avg(salary) from employees group by department having avg(salary) > 75000
--Q10. Find the department with the highest average salary.
select department, avg(salary) [Highest Average Salary] from employees group by department order by avg(salary) desc

-- Q1-Find the total salary paid by each department.
select department, sum(salary) [Total Salary Paid] from employees group by department
select department, sum(salary) [Total Salary Piad] from employees group by department
-- Q2- Find the departments that have at least 3 employees.
select department, count(employee_id) [No of Employees] from employees group by department having count(employee_id) >=3
-- Q3 - Find the top 2 departments based on average salary.
select top 2 department, avg(salary) [Average Salary] from employees group by department order by avg(salary) desc
-- Q4 - Find the average salary of IT employees.
select department, avg(salary)[Average Salary] from employees group by department having department = 'IT'
select department, avg(salary) from employees group by department having department = 'IT'
SELECT AVG(salary) AS [Average Salary] FROM employees WHERE department = 'IT';
--Q5 — Multiple conditions  -- Find the departments where: 1) there are at least 3 employees 2) AND their average salary is greater than 70,000
select department, count(employee_id) [Employee Count] , avg(salary) [Average Salary] from employees group by department 
having count(employee_id) >=3 and avg(salary) > 70000 

SELECT department,
       COUNT(employee_id) AS [No of Employees],
       AVG(salary) AS [Average Salary]
FROM employees
GROUP BY department
HAVING COUNT(employee_id) >= 3
   AND AVG(salary) > 70000;

--Q6 Find the highest salary in each department.
select top 1 department, salary from employees group by department order by salary desc
select department, max(salary) [Highest Salary] from employees group by department
--Q7 Find the employee who has the highest salary in the entire company.
select top 1 name, max(salary) [Highest Salary in company] from employees group by name order by max(salary) desc
SELECT TOP 1
       name,
       salary AS [Highest Salary in Company]
FROM employees
ORDER BY salary DESC;
--Q8 Find the number of employees in each city, with the cities having the most employees first.
select city, count(employee_id) from employees group by city order by city 
SELECT city,
       COUNT(employee_id) AS [No of Employees]
FROM employees
GROUP BY city
ORDER BY [No of Employees] DESC;
--Q9 Find departments where the lowest salary is greater than 50,000.
select department, min(salary) [min salary] from employees group by department having min(salary) > 50000
