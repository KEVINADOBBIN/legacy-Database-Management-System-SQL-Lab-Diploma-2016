-- =========================================
-- AGGREGATE FUNCTIONS IN SQL
-- REGISTER NUMBER: 408CS15025
-- =========================================

-- 1. Find the SUM, MAX, MIN and AVG salary of all employees
SELECT 
    SUM(salary) AS total_salary,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary,
    AVG(salary) AS avg_salary
FROM employee123;

-- 2. Retrieve the total number of employees in the company
SELECT COUNT(*) AS total_employees
FROM employee123;

-- 3. Retrieve the total number of employees
-- in the Research department
SELECT COUNT(*) AS research_employee_count
FROM employee123 e, department123 d
WHERE e.dno = d.dnumber
  AND d.dname = 'Research';

-- 4. Count the number of DISTINCT salaries
-- from the employee table
SELECT COUNT(DISTINCT salary) AS distinct_salary_count
FROM employee123;

-- 5. Find the SUM, MAX, MIN and AVG salary
-- of employees in the Research department
SELECT 
    SUM(e.salary) AS total_salary,
    MAX(e.salary) AS max_salary,
    MIN(e.salary) AS min_salary,
    AVG(e.salary) AS avg_salary
FROM employee123 e, department123 d
WHERE e.dno = d.dnumber
  AND d.dname = 'Research';
