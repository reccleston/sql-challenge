create table departments (
	dep_no int,
	dept_name varchar(50)
);

create table dept_emp (
	emp_no int,
	dept_no int
);

create table dept_manager (
	dept_no int,
	emp_no int
);

create table employees (
	emp_no int,
	emp_title_id varchar(10),	
	birth_date timestamp 	
	first_name varchar(40) 	
	last_name varchar(40)	
	sex varchar(2)	
	hire_date timestamp
);

create table salaries (
	emp_no int,	
	salary int
);

create table titles (
	emp_title_id varchar(10),
	title varchar(30)
);