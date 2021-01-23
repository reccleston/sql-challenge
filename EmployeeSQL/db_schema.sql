-- Department table
create table departments (
	dept_no varchar(10) not NULL,
	dept_name varchar(50) not NULL,
	primary key (dept_no)
);

-- Employee table
create table employees (
	emp_no int not NULL,
	emp_title_id varchar(10) not NULL,	
	birth_date varchar(30), 	
	first_name varchar(40) not NULL, 	
	last_name varchar(40) not NULL,	
	sex varchar(2) not NULL,	
	hire_date varchar(30),
	primary key (emp_no)
	foreign key (emp_title_id) references titles
);

-- Title table
create table titles (
	emp_title_id varchar(10) not NULL,
	title varchar(30) not NULL,
	primary key (emp_title_id)
);
-- Department/Employee table
create table dept_emp (
	emp_no int not NULL,
	dept_no varchar(10) not NULL,
	foreign key (dept_no) references departments
	foreign key (emp_no) references employees
);
-- Department/Manager table
create table dept_manager (
	dept_no varchar(10) not NULL,
	emp_no int not NULL,
	foreign key (dept_no) references departments
);

-- Salaries table
create table salaries (
	emp_no int not NULL,	
	salary int not NULL,
	foreign key (emp_no) references employees
);

