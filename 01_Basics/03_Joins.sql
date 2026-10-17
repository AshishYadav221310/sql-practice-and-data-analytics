select * from departments
---Q1.Show the employee name, department name, and salary by joining the two tables.
select e.name, d.department_name, e.salary from employees e inner join departments d on e.department = d.department_name
--Q2. Find the employee name and their department manager.
select e.name, d.manager from employees e join departments d on e.department = d.department_name
--Q3. Find the names and salaries of employees who work in a department located in Mumbai.
select e.name, e.salary from employees e join departments d on e.department = d.department_name where d.location = 'Mumbai'
--Q4. Find the employee name, department, manager, and salary for all employees, sorted by salary from highest to lowest.
select e.name, e.department, d.manager, e.salary from employees e join departments d on 
    e.department = d.department_name order by e.salary desc
--Q5. Show all employees along with their department manager.
select e.name, e.department, d.manager from employees e left join departments d on e.department = d.department_name
-- Q6. Find all employees whose department does NOT have a matching record in the departments table.
select e.name, e.department from employees e left join departments d on e.department = d.department_name where d.department_name is null
--Q7. Show each department and the number of employees working in it.
select d.department_name, count(e.employee_id) [No of Employees] from employees e join 
    departments d on e.department = d.department_name group by d.department_name
--Q8. Find departments that have at least 3 employees, and show the department name and employee count.
select d.department_name, count(e.employee_id) [No of Employees] from employees e join 
    departments d on e.department = d.department_name group by d.department_name having count(e.employee_id) >=3
--Q9. Find the average salary for each department and show the department manager as well.
select d.manager, d.department_name, avg(e.salary) [Average Salary] from employees e join departments d on e.department = d.department_name group by d.department_name,d.manager
--Q10. Find departments whose average salary is greater than 75,000, and show:Department ,Manager ,Average Salary
select d.manager, d.department_name, avg(e.salary) [Average Salary] from employees e join
    departments d on e.department = d.department_name group by d.manager, d.department_name having avg(e.salary) > 75000
