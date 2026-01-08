-- ================================
-- DATA MANIPULATION LANGUAGE (DML)
-- USING INSERT AND SELECT STATEMENT
-- REGISTER NUMBER: 408CS15015
-- ================================

-- EMPLOYEE TABLE DATA
INSERT INTO employee123 VALUES
('123456789','John','B','Smith','1965-01-09','731 Fondren, Houston, TX','M',3000,'123456789',5);

INSERT INTO employee123 VALUES
('333445555','Franklin','T','Wong','1955-12-08','638 Voss, Houston, TX','M',40000,'123456789',5);

INSERT INTO employee123 VALUES
('987654321','Jennifer','S','Wallace','1941-06-20','291 Berry, Bellaire, TX','F',43000,NULL,4);

INSERT INTO employee123 VALUES
('888665555','James','E','Borg','1937-11-10','450 Stone, Houston, TX','M',55000,NULL,1);

-- DISPLAY EMPLOYEE DETAILS
SELECT * FROM employee123;

-- ================================
-- DEPARTMENT TABLE DATA
-- ================================

INSERT INTO department123 VALUES
(5,'Research','333445555','1988-05-22');

INSERT INTO department123 VALUES
(4,'Administration','987654321','1995-01-01');

INSERT INTO department123 VALUES
(1,'Headquarters','888665555','1981-06-19');

-- DISPLAY DEPARTMENT DETAILS
SELECT * FROM department123;

-- ================================
-- DEPT_LOCATION TABLE DATA
-- ================================

INSERT INTO dept_location123 VALUES (1,'Houston');
INSERT INTO dept_location123 VALUES (4,'Stafford');
INSERT INTO dept_location123 VALUES (5,'Bellaire');
INSERT INTO dept_location123 VALUES (5,'Houston');

-- DISPLAY DEPARTMENT LOCATIONS
SELECT * FROM dept_location123;

-- ================================
-- PROJECT TABLE DATA
-- ================================

INSERT INTO project123 VALUES
(1,'ProductX','Bellaire',5);

INSERT INTO project123 VALUES
(2,'ProductY','Sugarland',5);

-- DISPLAY PROJECT DETAILS
SELECT * FROM project123;

-- ================================
-- WORKS_ON TABLE DATA
-- ================================

INSERT INTO works_on123 VALUES ('123456789',1,32.5);
INSERT INTO works_on123 VALUES ('123456789',2,7.5);
INSERT INTO works_on123 VALUES ('333445555',1,40.0);

-- DISPLAY WORKS_ON DETAILS
SELECT * FROM works_on123;

-- ================================
-- DEPENDENT TABLE DATA
-- ================================

INSERT INTO dependent123 VALUES
('333445555','Alicia','F','1986-04-05','Daughter');

INSERT INTO dependent123 VALUES
('333445555','Theodore','M','1983-10-25','Son');

INSERT INTO dependent123 VALUES
('333445555','Joy','F','1956-05-03','Spouse');

INSERT INTO dependent123 VALUES
('123456789','Mithral','M','1988-01-04','Son');

INSERT INTO dependent123 VALUES
('123456789','Alice','F','1988-12-30','Daughter');

INSERT INTO dependent123 VALUES
('123456789','Elizabeth','F','1955-12-30','Spouse');

-- DISPLAY DEPENDENT DETAILS
SELECT * FROM dependent123;
