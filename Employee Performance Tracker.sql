create database employee;

select count(*) from employee.employeedetails
select count(*) from employee.employeelocation
select count(*) from employee.employeesalary

2)

select count(distinct(Employee_id)) 
from employee.employeedetails;

3)

select count(Employee_id)
from employee.employeedetails
group by Employee_id
having count(Employee_id) > 1;

-- select Employee_id, count(*)
-- from employee.employeedetails
-- group by Employee_id
-- having count(*) > 1;

4)

-- select 
--  count(*) as total_rows
--  sum(case when department is null then 1 else 0 end) as null_department,
--  sum(case when Job_title is null then 1 else 0 end) as null_Jobtitle
-- from employee.employeedetails;

SELECT 
  COUNT(*) AS total_rows,
  SUM(department IS NULL) AS null_department,
  SUM(job_title IS NULL) AS null_job_title
FROM employee.employeedetails;

5)

select d.Employee_id
from employee.employeedetails d
left join employee.employeesalary s
on d.Employee_id = s.Employee_id
where s.Annual_salary is null;

6)

select count(Employee_id) as employee_count, department
from employee.employeedetails
group by department
order by employee_count desc;

7)

select count(Employee_id) as employee_count, country
from employee.employeelocation
group by country
order by employee_count desc;

8)

select count(Employee_id) as employee_count, gender
from employee.employeedetails
group by gender
order by employee_count desc;

9)

select d.department, l.country, count(*) as total_count
from employee.employeedetails d
left join employee.employeelocation l
on d.Employee_id = l.Employee_id
group by d.department, l.country
order by total_count desc;


10)

select d.department, avg(s.Annual_salary) as total_count
from employee.employeedetails d
left join employee.employeesalary s
on d.Employee_id = s.Employee_id
group by d.department
order by total_count desc;

-- select department, avg(Annual_salary) as avg_sal
-- from employee.employeesalary
-- group by department
-- order by avg_sal desc

11)

select l.country, avg(s.Annual_salary) as total_count
from employee.employeelocation l
left join employee.employeesalary s
on l.Employee_id = s.Employee_id
group by l.country
order by total_count desc;

12)

select d.gender, avg(s.Annual_salary) as total_count
from employee.employeedetails d
left join employee.employeesalary s
on d.Employee_id = s.Employee_id
group by d.gender
order by total_count desc;

13)

select d.gender, d.department, avg(s.Annual_salary) as total_count
from employee.employeedetails d
left join employee.employeesalary s
on d.Employee_id = s.Employee_id
group by d.department, d.gender
order by total_count desc;

14)

select
   min(Annual_salary) as min_sal,
   max(Annual_salary) as max_sal,
   avg(Annual_salary) as avg_sal
from employee.employeesalary;

15)

select employee_id, count(*) as bonus_count
from employee.employeesalary
where Bonus > 0
group by employee_id;

16)

select department, avg(Bonus) as avg_bonus
from employee.employeesalary
group by department
order by avg_bonus desc;

17)

select d.Full_name, s.Annual_salary
from employee.employeedetails d
left join employee.employeesalary s
on d.employee_id = s.employee_id
order by s.Annual_salary
limit 5;








