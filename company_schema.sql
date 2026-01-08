-- EMPLOYEE TABLE
CREATE TABLE employee123 (
    fname VARCHAR(10),
    minit CHAR(1),
    lname VARCHAR(10),
    ssn CHAR(9) NOT NULL,
    bdate DATE,
    address VARCHAR(30),
    sex CHAR(1),
    salary DECIMAL(10,2),
    super_ssn CHAR(9),
    dno INT NOT NULL,
    PRIMARY KEY (ssn),
    FOREIGN KEY (super_ssn) REFERENCES employee123(ssn)
);

-- DEPARTMENT TABLE
CREATE TABLE department123 (
    dname VARCHAR(15) NOT NULL,
    dnumber INT NOT NULL,
    mgr_ssn CHAR(9) NOT NULL,
    mgr_start_date DATE,
    PRIMARY KEY (dnumber),
    UNIQUE (dname),
    FOREIGN KEY (mgr_ssn) REFERENCES employee123(ssn)
);

-- DEPT_LOCATION TABLE
CREATE TABLE dept_location123 (
    dnumber INT NOT NULL,
    dlocation VARCHAR(15) NOT NULL,
    PRIMARY KEY (dnumber, dlocation),
    FOREIGN KEY (dnumber) REFERENCES department123(dnumber)
);

-- PROJECT TABLE
CREATE TABLE project123 (
    pname VARCHAR(15) NOT NULL,
    pnumber INT NOT NULL,
    plocation VARCHAR(15),
    dnumber INT NOT NULL,
    PRIMARY KEY (pnumber),
    UNIQUE (pname),
    FOREIGN KEY (dnumber) REFERENCES department123(dnumber)
);

-- WORKS_ON TABLE
CREATE TABLE works_on123 (
    essn CHAR(9) NOT NULL,
    pno INT NOT NULL,
    hours DECIMAL(3,1) NOT NULL,
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
