-- =========================================
-- NESTED AND COMPLEX QUERIES USING MULTIPLE TABLES
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- 1. Retrieve the name of employees whose salary is greater than
-- salary of all employees in department number 4
SELECT fname, lname
FROM employee123
WHERE salary > ALL (
    SELECT salary
    FROM employee123
    WHERE dno = 4
);

-- 2. List the name of managers who manage at least one department
SELECT fname, lname
FROM employee123 e
WHERE EXISTS (
    SELECT *
    FROM department123 d
    WHERE e.ssn = d.mgr_ssn
);

-- 3. Retrieve the name of employees who do NOT have any dependents
SELECT fname, lname
FROM employee123 e
WHERE NOT EXISTS (
    SELECT *
    FROM dependent123 d
    WHERE e.ssn = d.essn
);
