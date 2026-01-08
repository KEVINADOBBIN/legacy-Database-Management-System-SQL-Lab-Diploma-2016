-- =========================================
-- SQL OPERATORS (AND, OR, LIKE, BETWEEN, IN)
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- 1. Retrieve the birth date, address and salary
-- of employee whose name is Joyce English
SELECT bdate, address, salary
FROM employee123
WHERE fname = 'Joyce'
  AND lname = 'English';

-- 2. Retrieve fname, minit, lname, salary and dno
-- of employees working in Research OR Administration department
SELECT e.fname, e.minit, e.lname, e.salary, e.dno
FROM employee123 e, department123 d
WHERE (d.dname = 'Research' OR d.dname = 'Administration')
  AND d.dnumber = e.dno;

-- 3A. Retrieve employees whose address is in Houston, TX
SELECT fname, lname
FROM employee123
WHERE address LIKE '%Houston, TX%';

-- 3B. Retrieve project details whose project name starts with 'P'
SELECT *
FROM project123
WHERE pname LIKE 'P%';

-- 4. Retrieve employees whose salary is between 25000 and 40000
SELECT fname, lname, salary
FROM employee123
WHERE salary BETWEEN 25000 AND 40000;

-- 5. Retrieve employees working in department numbers 4 or 5
SELECT fname, lname, dno
FROM employee123
WHERE dno IN (4, 5);
