CREATE TABLE departments(
dept_no CHAR(10) NOT NULL PRIMARY KEY,
dept_name VARCHAR(30) 
);

CREATE TABLE dept_emp(
emp_no INT,
dept_no CHAR(10),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
dept_no CHAR(10),
emp_no INT,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees(
emp_no INT NOT NULL PRIMARY KEY,
emp_title CHAR(10),
hire_date DATE,
first_name VARCHAR(30), 
last_name VARCHAR(30), 
birth_date DATE,
sex VARCHAR(1),
FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);
	
CREATE TABLE salaries(
emp_no INT,
salary FLOAT,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
title_id CHAR(10) NOT NULL PRIMARY KEY,
title VARCHAR(30) 
);	

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

