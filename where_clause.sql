-- =========================================
-- ILLUSTRATE THE USE OF WHERE CLAUSE
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- 1. Retrieve the birth date and address of the employee John B Smith
SELECT bdate, address
FROM employee123
WHERE fname = 'John'
  AND minit = 'B'
  AND lname = 'Smith';

-- 2. Retrieve the name and address of all employees
-- who work for the 'Research' department
SELECT e.fname, e.minit, e.address
FROM employee123 e, department123 d
WHERE d.dname = 'Research'
  AND d.dnumber = e.dno;

-- 3. Retrieve all employees in Research department
-- whose salary is between 25000 and 55000
SELECT *
FROM employee123
WHERE dno = 5
  AND salary BETWEEN 25000 AND 55000;

-- 4. Retrieve all employee details
-- who are working in Administration department
SELECT *
FROM employee123
WHERE dno = 4;
