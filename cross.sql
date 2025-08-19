CREATE Table employees (
    emp_id INT,
    emp_name VARCHAR(25),
    dept_id INT
)

CREATE Table departments (
    dpt_id INT,
    dpt_name VARCHAR(50)
)

INSERT INTO employees VALUES(1, 'SEI TMI', 101);
INSERT INTO employees VALUES(2, 'KNO HAI', 102);

INSERT INTO departments VALUES(101, 'HR');
INSERT INTO departments VALUES(102, 'MK');


SELECT * FROM employees;
SELECT * FROM departments;


-- cross join
SELECT * FROM employees
    CROSS JOIN departments;