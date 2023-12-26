create table employees(
	emp_no INT NOT NULL,
	title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(title_id) REFERENCES titles (title_id)
);

select * from employees

create table departments(
	dept_no VARCHAR(30) NOT NULL,
  	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);

create table dept_emp(
	emp_no INT NOT NULL,
  	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

create table dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

create table titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(40) NOT NULL,
	PRIMARY KEY (title_id)
);
select * from salaries

create table salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
