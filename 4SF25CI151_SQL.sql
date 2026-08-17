CREATE TABLE department(
	dept_id INT primary key,
	dept_name VARCHAR(50)
);

CREATE TABLE employee(
	emp_id INT primary key,
	emp_name VARCHAR(100),
	salary DECIMAL(10,2),
	dept_id INT,
	foreign key (dept_id) references department(dept_id)
);

INSERT INTO department (dept_id,dept_name) Values
(1, 'AIML'),
(2, 'MECH'),
(3, 'Finance'),
(4, 'Sales');

INSERT INTO employee (emp_id,emp_name,salary,dept_id) Values
(101, 'shihan', 55000, 2),
(102, 'taazim', 35000, 1),
(103, 'zia', 85000, 3),
(104, 'Fadil', 23000, 1),
(105, 'haseeb', 1000, 3),
(106, 'farsheed', 9000, 4),
(107, 'Yumn', 76000, 2);


SELECT * FROM employee;

SELECT DISTINCT dept_name
FROM department;

SELECT *
FROM employee
WHERE salary>50000;

SELECT *
FROM employee
WHERE dept_id=1;

SELECT *
FROM employee
WHERE salary BETWEEN 40000 AND 60000;

SELECT *
FROM employee
WHERE dept_id IN (1,3);

SELECT *
FROM employee
ORDER BY salary DESC;

SELECT *
FROM employee
WHERE salary>50000
AND dept_id=1;

SELECT *
FROM employee
WHERE dept_id=1
OR dept_id=3;

SELECT *
FROM employee
WHERE NOT dept_id=2;


