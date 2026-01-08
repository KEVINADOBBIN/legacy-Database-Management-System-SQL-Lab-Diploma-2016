-- =========================================
-- QUERY MULTIPLE TABLES USING JOIN OPERATION
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- 1. Retrieve the name and address of all employees
-- who work for the Research department
SELECT e.fname, e.lname, e.address
FROM employee123 e
JOIN department123 d ON e.dno = d.dnumber
WHERE d.dname = 'Research';

-- 2. For every project located in 'Houston', list:
-- project number, department name, department manager's lname, address and birthdate
SELECT p.pnumber, d.dname, m.lname AS mgr_lname, m.address AS mgr_address, m.bdate AS mgr_bdate
FROM project123 p
JOIN department123 d ON p.dnumber = d.dnumber
JOIN employee123 m ON d.mgr_ssn = m.ssn
WHERE p.plocation = 'Houston';
