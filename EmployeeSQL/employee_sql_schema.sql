-- Create departments table
CREATE TABLE departments (
    dept_no VARCHAR(5) PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

-- Create titles table
CREATE TABLE titles (
    title_id VARCHAR(6) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

-- Create employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(6) REFERENCES titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

-- Create dept_emp table
CREATE TABLE dept_emp (
    emp_no INT REFERENCES employees(emp_no),
    dept_no VARCHAR(5) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create dept_manager table
CREATE TABLE dept_manager (
    emp_no INT PRIMARY KEY REFERENCES employees(emp_no),
    dept_no VARCHAR(5) NOT NULL REFERENCES departments(dept_no)
);

-- Create salaries table
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY REFERENCES employees(emp_no),
    salary INT NOT NULL
);
