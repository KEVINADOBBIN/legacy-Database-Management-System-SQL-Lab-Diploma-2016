-- =========================================
-- GROUP BY AND HAVING CLAUSE
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- 1. For each department, find the number of employees
-- and the average salary
SELECT 
    dno,
    COUNT(*) AS employee_count,
    AVG(salary) AS avg_salary
FROM employee123
GROUP BY dno;

-- 2. For each project, find the project number, project name
-- and the number of employees working on the project
SELECT 
    p.pnumber,
    p.pname,
    COUNT(*) AS employee_count
FROM project123 p, works_on123 w
WHERE p.pnumber = w.pno
GROUP BY p.pnumber, p.pname;

-- 3. For each project where more than one employee works,
-- retrieve project number, project name and number of employees
SELECT 
    p.pnumber,
    p.pname,
    COUNT(*) AS employee_count
FROM project123 p, works_on123 w
WHERE p.pnumber = w.pno
GROUP BY p.pnumber, p.pname
HAVING COUNT(*) > 1;
