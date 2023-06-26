-- Create titles table
CREATE TABLE titles(
    title_id VARCHAR  NOT NULL,
    title VARCHAR  NOT NULL,
    PRIMARY KEY (title_id)
);
-- View the titles table
SELECT * FROM titles;

-- Drop table if exists
DROP TABLE employees;

--Create employees table
CREATE TABLE employees (
    emp_no INT   NOT NULL,
	emp_title_id VARCHAR NOT NULL,
    birth_date date NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date  date   NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
ALTER DATABASE starter_code SET datestyle TO "ISO, MDY";
-- View the employees table
SELECT * FROM employees;



-- Create departments table
CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (dept_no)
);
-- View the departments table
SELECT * FROM departments;


-- Create dept_manager table  
CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (dept_no, emp_no)
);
-- View the dept_manager table
SELECT * FROM dept_manager;


-- Create dept_emp table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);
-- View the dept_emp table
SELECT * FROM dept_emp;


-- Create salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no)
);
-- View the salaries table
SELECT * FROM salaries;