-- =========================================
-- VIEW COMMAND AND VIEW MANIPULATION
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- 1. Create a view to display employee name and birth date
CREATE VIEW emp_view AS
SELECT fname, lname, bdate
FROM employee123;

-- Display contents of emp_view
SELECT * FROM emp_view;

-- =========================================
-- 2. Create a view joining employee, project and works_on tables
-- =========================================
CREATE VIEW works_on1234_view AS
SELECT e.fname,
       e.lname,
       p.pname,
       w.hours
FROM employee123 e,
     project1234 p,
     works_on1234 w
WHERE e.ssn = w.essn
  AND w.pno = p.pnumber;

-- Display contents of works_on1234_view
SELECT * FROM works_on1234_view;
