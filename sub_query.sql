CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
)

drop table if exists employees;


INSERT INTO employees (employee_id, employee_name, department_name, salary, hire_date) VALUES
(1, 'Emily Carter', 'Sales', 65000.00, '2022-03-01'),
(2, 'Michael Chen', 'Engineering', 92000.00, '2019-07-15'),
(3, 'Sarah Adams', 'Marketing', 78500.00, '2021-05-20'),
(4, 'David Rodriguez', 'Sales', 71000.00, '2020-09-10'),
(5, 'Jessica Lee', 'HR', 55000.00, '2023-01-25'),
(6, 'Daniel Brown', 'Engineering', 110000.00, '2018-11-04'),
(7, 'Laura Wilson', 'Finance', 89000.00, '2020-04-18'),
(8, 'James Martin', 'IT', 95000.00, '2017-06-30'),
(9, 'Olivia Jones', 'Marketing', 82000.00, '2022-08-08'),
(10, 'William Davis', 'Sales', 68000.00, '2021-11-12'),
(11, 'Sophia Garcia', 'IT', 105000.00, '2016-02-29'),
(12, 'Robert Taylor', 'HR', 60000.00, '2022-10-01'),
(13, 'Ava White', 'Finance', 94000.00, '2019-03-05'),
(14, 'Joseph Miller', 'Engineering', 88000.00, '2020-05-09'),
(15, 'Chloe Moore', 'Marketing', 76000.00, '2021-09-22'),
(16, 'Benjamin Hall', 'Sales', 73000.00, '2020-01-14'),
(17, 'Isabella Clark', 'HR', 58000.00, '2023-04-17'),
(18, 'Mason Lewis', 'IT', 98000.00, '2018-08-28'),
(19, 'Mia Harris', 'Engineering', 115000.00, '2017-12-03'),
(20, 'Noah King', 'Finance', 97000.00, '2018-05-11'),
(21, 'Evelyn Baker', 'Marketing', 84000.00, '2022-01-30'),
(22, 'Liam Allen', 'Sales', 69500.00, '2021-06-05'),
(23, 'Charlotte Nelson', 'IT', 102000.00, '2019-09-20'),
(24, 'Alexander Wright', 'HR', 62000.00, '2022-06-11'),
(25, 'Amelia Green', 'Finance', 91000.00, '2021-02-14'),
(26, 'Henry Scott', 'Engineering', 108000.00, '2019-10-25'),
(27, 'Harper Adams', 'IT', 112000.00, '2016-07-07'),
(28, 'Ethan Lopez', 'Sales', 75000.00, '2020-12-08'),
(29, 'Avery Hill', 'Marketing', 80000.00, '2022-03-19'),
(30, 'Leo Walker', 'HR', 59000.00, '2023-02-28'),
(31, 'Zoe Young', 'Finance', 93000.00, '2020-10-03'),
(32, 'Sebastian Rodriguez', 'Engineering', 100000.00, '2021-08-16');



-- retrieve all employees whose salary greter than the height salary of the HR department
SELECT * FROM employees
    WHERE department_name = 'HR';

SELECT max(salary) FROM employees 
    WHERE department_name = 'HR';

-- main query
SELECT * FROM employees 
    WHERE salary > (SELECT max(salary) FROM employees 
        WHERE department_name = 'HR');

        -- jara 1 ta data retunr kore tader bole scalar sub query

        -- can return single value
        SELECT max(salary) FROM employees 
            WHERE department_name = 'HR';

        -- can return multiple rows and columns
        SELECT * FROM employees
            WHERE department_name = 'HR';


        -- can return single column 
        SELECT salary FROM employees 
            WHERE department_name = 'HR';