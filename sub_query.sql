CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)



INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('John Smith', 1, 60000.00, '2020-03-15'),
('Emma Johnson', 2, 85000.00, '2019-07-22'),
('Michael Chen', 3, 72000.00, '2021-01-10'),
('Sarah Davis', 4, 68000.00, '2022-06-05'),
('James Wilson', 5, 75000.00, '2018-11-30'),
('Emily Brown', 6, 82000.00, '2020-09-12'),
('David Martinez', 7, 65000.00, '2023-02-18'),
('Lisa Taylor', 1, 58000.00, '2021-04-25'),
('Robert Anderson', 2, 90000.00, '2017-08-14'),
('Jennifer Lee', 3, 70000.00, '2022-03-09'),
('Thomas White', 4, 71000.00, '2020-12-01'),
('Amanda Garcia', 5, 78000.00, '2019-05-20'),
('Steven Clark', 6, 87000.00, '2021-07-17'),
('Megan Harris', 7, 62000.00, '2023-01-08'),
('Daniel Lewis', 1, 59000.00, '2022-10-03'),
('Laura Walker', 2, 92000.00, '2018-02-27'),
('Christopher Hall', 3, 74000.00, '2021-11-15'),
('Ashley Young', 4, 69000.00, '2020-04-12'),
('Matthew King', 5, 77000.00, '2019-09-30'),
('Samantha Wright', 6, 83000.00, '2022-08-22'),
('Andrew Scott', 7, 64000.00, '2023-03-19'),
('Rachel Green', 1, 61000.00, '2021-06-07'),
('Mark Turner', 2, 88000.00, '2017-12-05'),
('Kelly Adams', 3, 73000.00, '2022-02-14'),
('Brian Nelson', 4, 70000.00, '2020-10-25'),
('Nicole Carter', 5, 79000.00, '2019-03-11'),
('Jason Mitchell', 6, 86000.00, '2021-05-29'),
('Heather Perez', 7, 63000.00, '2023-04-02'),
('Patrick Roberts', 1, 57000.00, '2022-09-16'),
('Michelle Turner', 2, 91000.00, '2018-06-08'),
('Gregory Phillips', 3, 71000.00, '2021-12-20'),
('Stephanie Campbell', 4, 72000.00, '2020-07-03'),
('Edward Parker', 5, 76000.00, '2019-10-15'),
('Christina Evans', 6, 84000.00, '2022-01-27'),
('Jonathan Morris', 7, 66000.00, '2023-05-10');


