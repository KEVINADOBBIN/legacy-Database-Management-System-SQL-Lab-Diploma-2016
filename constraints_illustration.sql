-- DROP TABLES IF THEY ALREADY EXIST
DROP TABLE IF EXISTS works_on123;
DROP TABLE IF EXISTS dependent123;
DROP TABLE IF EXISTS project123;
DROP TABLE IF EXISTS dept_location123;
DROP TABLE IF EXISTS department123;
DROP TABLE IF EXISTS employee123;
DROP TABLE IF EXISTS customer24;
DROP TABLE IF EXISTS staff42;

-- EMPLOYEE TABLE
CREATE TABLE employee123 (
    ssn CHAR(9) PRIMARY KEY,                      -- PRIMARY KEY
    fname VARCHAR(10) NOT NULL,                   -- NOT NULL
    minit CHAR(1),
    lname VARCHAR(10),
    bdate DATE,
    address VARCHAR(30),
    sex CHAR(1) CHECK (sex IN ('M','F')),         -- CHECK
    salary DECIMAL(10,2) DEFAULT 0,                -- DEFAULT
    super_ssn CHAR(9),
    dno INT NOT NULL,
    FOREIGN KEY (super_ssn) REFERENCES employee123(ssn) -- FOREIGN KEY
);

-- DEPARTMENT TABLE
CREATE TABLE department123 (
    dnumber INT PRIMARY KEY,                      -- PRIMARY KEY
    dname VARCHAR(15) NOT NULL UNIQUE,            -- UNIQUE
    mgr_ssn CHAR(9) NOT NULL,
    mgr_start_date DATE,
    FOREIGN KEY (mgr_ssn) REFERENCES employee123(ssn)
);

-- DEPARTMENT LOCATION TABLE
CREATE TABLE dept_location123 (
    dnumber INT NOT NULL,
    dlocation VARCHAR(15) NOT NULL,
    PRIMARY KEY (dnumber, dlocation),             -- COMPOSITE KEY
    FOREIGN KEY (dnumber) REFERENCES department123(dnumber)
);

-- PROJECT TABLE
CREATE TABLE project123 (
    pnumber INT PRIMARY KEY,
    pname VARCHAR(15) UNIQUE,
    plocation VARCHAR(15),
    dnumber INT NOT NULL,
    FOREIGN KEY (dnumber) REFERENCES department123(dnumber)
);

-- WORKS_ON TABLE
CREATE TABLE works_on123 (
    essn CHAR(9) NOT NULL,
    pno INT NOT NULL,
    hours DECIMAL(3,1) CHECK (hours <= 40),       -- CHECK
    PRIMARY KEY (essn, pno),
    FOREIGN KEY (essn) REFERENCES employee123(ssn),
    FOREIGN KEY (pno) REFERENCES project123(pnumber)
);

-- DEPENDENT TABLE
CREATE TABLE dependent123 (
    essn CHAR(9) NOT NULL,
    dependent_name VARCHAR(15) NOT NULL,
    sex CHAR(1),
    bdate DATE,
    relationship VARCHAR(8),
    PRIMARY KEY (essn, dependent_name),
    FOREIGN KEY (essn) REFERENCES employee123(ssn)
);

-- CUSTOMER TABLE (CHECK CONSTRAINT)
CREATE TABLE customer24 (
    custno INT PRIMARY KEY,
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20),
    address VARCHAR(20),
    status CHAR(1) CHECK (status IN ('S','M'))
);

-- STAFF TABLE
CREATE TABLE staff42 (
    id CHAR(8) PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    sex CHAR(1),
    dob DATE
);
