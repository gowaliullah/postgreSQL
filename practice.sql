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



SELECT * FROM employees
    JOIN departments USING(department_id);   


SELECT department_name, avg(salary) FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name;


SELECT department_name, round(avg(salary)) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name;


SELECT department_name, count(*) FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name;



SELECT department_name, round(avg(salary)) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name
    ORDER BY avg_salary DESC
    LIMIT 1
    ;


SELECT extract(YEAR from hire_date) as hire_year, count(*) FROM employees
    GROUP BY hire_year;