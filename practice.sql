CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)



SELECT * FROM employees
    JOIN departments ON employees.department_id = departments.department_id ;   