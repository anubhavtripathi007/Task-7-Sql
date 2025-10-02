-- Task 7: SQL Developer Internship
-- Creating Views

-- Sample tables
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert sample data
INSERT INTO Employees VALUES (1, 'Alice', 'HR', 40000);
INSERT INTO Employees VALUES (2, 'Bob', 'Finance', 55000);
INSERT INTO Employees VALUES (3, 'Charlie', 'IT', 70000);
INSERT INTO Employees VALUES (4, 'David', 'Finance', 45000);
INSERT INTO Employees VALUES (5, 'Eve', 'IT', 80000);

INSERT INTO Departments VALUES (1, 'HR');
INSERT INTO Departments VALUES (2, 'Finance');
INSERT INTO Departments VALUES (3, 'IT');

-- 1. Create a simple view showing employee names and salaries
CREATE VIEW EmployeeSalaries AS
SELECT emp_name, salary
FROM Employees;

-- 2. Create a view with filtering
CREATE VIEW HighEarners AS
SELECT emp_name, department, salary
FROM Employees
WHERE salary > 50000;

-- 3. Create a view joining Employees and Departments
CREATE VIEW EmployeeDepartments AS
SELECT e.emp_name, e.salary, d.dept_name
FROM Employees e
JOIN Departments d ON e.department = d.dept_name;

-- 4. Use the view (querying it like a table)
SELECT * FROM EmployeeSalaries;

SELECT * FROM HighEarners;

SELECT dept_name, AVG(salary) AS avg_salary
FROM EmployeeDepartments
GROUP BY dept_name;

-- 5. Update through a view (if allowed by DB engine)
UPDATE EmployeeSalaries
SET salary = 42000
WHERE emp_name = 'Alice';

-- 6. Drop a view
DROP VIEW IF EXISTS HighEarners;
