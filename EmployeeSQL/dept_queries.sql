-- dept_queries.sql

-- 1
select 
    employees.emp_no, 
    employees.last_name, 
    employees.first_name,
    employees.sex,
    salaries.salary
from employees
left join salaries
on salaries.emp_no = employees.emp_no;
-- 2
select 
    first_name, 
    last_name,
    hire_date
from employees
where hire_date like '__/__/1986';

-- 3
create view getManagers as
    select
        dept_manager.dept_no,
        dept_manager.emp_no,
        employees.last_name,
        employees.first_name
    from dept_manager
    left join employees
    on employees.emp_no = dept_manager.emp_no;

select  departments.dept_name, getManagers.*
from departments
left join getManagers
on getManagers.dept_no = departments.dept_no;

-- 4
select
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
from departments
left join dept_emp
on dept_emp.dept_no = departments.dept_no
left join employees
on employees.emp_no = dept_emp.emp_no;

-- 5
select
    first_name,
    last_name,
    sex
from employees
where
    first_name = 'Hercules' and
    last_name like 'B%';

-- 6
select
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
from departments
left join dept_emp 
on dept_emp.dept_no = departments.dept_no
left join employees
on employees.emp_no = dept_emp.emp_no
where departments.dept_name = 'Sales';

-- 7
select
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
from departments
left join dept_emp 
on dept_emp.dept_no = departments.dept_no
left join employees
on employees.emp_no = dept_emp.emp_no
where 
    departments.dept_name = 'Sales' or
    departments.dept_name = 'Development';

-- 8
select 
    last_name, 
    count(last_name) as instance_num
from employees
group by last_name
order by instance_num desc