-- =========================================
-- ALTER (MODIFY) AND DROP TABLE
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- Display structure of the table before modification
DESC student123;

-- Modify the size of LOCATION column
ALTER TABLE student123
MODIFY location VARCHAR2(30);

-- Display structure after modification
DESC student123;

-- Drop the table
DROP TABLE student123;
