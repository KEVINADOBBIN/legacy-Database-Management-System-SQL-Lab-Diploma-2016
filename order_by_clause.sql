-- =========================================
-- ILLUSTRATE THE USE OF ORDER BY CLAUSE
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- 1. List of employees ordered by salary
SELECT *
FROM employee123
ORDER BY salary;

-- 2. Retrieve the list of employees and projects
-- they are working on, ordered by department name
-- and then by last name and first name
SELECT d.dname, e.lname, e.fname, p.pname
FROM department123 d, employee123 e, works_on123 w, project123 p
WHERE d.dnumber = e.dno
  AND e.ssn = w.essn
  AND w.pno = p.pnumber
ORDER BY d.dname, e.lname, e.fname;

-- 3. Retrieve the list of employees and projects
-- ordered by department and within each department
-- ordered alphabetically by last name and first name
-- in descending order
SELECT d.dname, e.lname, e.fname, p.pname
FROM department123 d, employee123 e, works_on123 w, project123 p
WHERE d.dnumber = e.dno
  AND e.ssn = w.essn
  AND w.pno = p.pnumber
ORDER BY d.dname, e.lname DESC, e.fname DESC;
