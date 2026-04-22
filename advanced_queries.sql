-- Advanced SQL Queries Practice

-- 1. Create table
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- 2. Insert sample data
INSERT INTO Employees VALUES (1, 'Alice', 'HR', 30000);
INSERT INTO Employees VALUES (2, 'Bob', 'IT', 50000);
INSERT INTO Employees VALUES (3, 'Charlie', 'IT', 60000);
INSERT INTO Employees VALUES (4, 'David', 'Finance', 40000);

-- 3. Find highest salary
SELECT name, salary 
FROM Employees 
WHERE salary = (SELECT MAX(salary) FROM Employees);

-- 4. Department-wise average salary
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;

-- 5. Employees earning above average salary
SELECT name, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- 6. Order by salary descending
SELECT * 
FROM Employees
ORDER BY salary DESC;
