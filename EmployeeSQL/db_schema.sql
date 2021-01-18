create table departments (
	dep_no int,
	dept_name varchar(50) not NULL
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
	emp_title_id varchar(10) not NULL,	
	birth_date timestamp, 	
	first_name varchar(40) not NULL, 	
	last_name varchar(40) not NULL,	
	sex varchar(2) not NULL,	
	hire_date timestamp
);

create table salaries (
	emp_no int,	
	salary int
);

create table titles (
	id serial primary key, 
	emp_title_id varchar(10) not NULL,
	title varchar(30) not NULL
);