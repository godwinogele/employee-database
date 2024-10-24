# creating a new database

CREATE DATABASE company;

# creating a new table

USE company;

CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  salary DECIMAL(10, 2),
  department VARCHAR(50)
);

# inserting Data into the Database

INSERT INTO employees (first_name, last_name, salary, department)
VALUES ('John', 'Doe', 50000.00, 'IT'),
       ('Jane', 'Smith', 60000.00, 'HR'),
       ('Alice', 'Johnson', 75000.00, 'Finance');

# Basic SQL Queries for Data Analysis
#	Retrieve all data from the table.

SELECT * FROM employees;

#	Select specific columns.

SELECT first_name, last_name FROM employees;

#	Filter data using WHERE (employees in the IT department).

SELECT * FROM employees WHERE department = 'IT';

# Step 4: Use aggregate functions (e.g., calculate the average salary).

SELECT AVG(salary) AS average_salary FROM employees;

# Step 5: Sort data (e.g., employees by salary in descending order).

SELECT * FROM employees ORDER BY salary DESC;

# Task 2: Retrieve employees earning more than $60,000.

SELECT * FROM employees WHERE salary >60000;

# Task 3: Find the total number of employees in the 'Finance' department.

SELECT COUNT(department = 'Finance') FROM employees;