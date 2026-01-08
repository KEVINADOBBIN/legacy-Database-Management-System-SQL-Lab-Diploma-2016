-- =========================================
-- PERFORM UPDATE, ALTER, DELETE AND DROP
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- Display all records from STUDENT table
SELECT * FROM student123;

-- ======================
-- UPDATE OPERATION
-- ======================
-- Update the location of a student
UPDATE student123
SET location = 'Bangalore'
WHERE regno = 1005;

-- View updated table
SELECT * FROM student123;

-- ======================
-- DELETE OPERATION
-- ======================
-- Delete student whose name is Kevin
DELETE FROM student123
WHERE name = 'Kevin';

-- View table after deletion
SELECT * FROM student123;

-- ======================
-- ALTER TABLE (ADD COLUMN)
-- ======================
-- Add a new column DEPARTMENT
ALTER TABLE student123
ADD department VARCHAR(15);

-- Describe table structure
DESC student123;

-- ======================
-- ALTER TABLE (MODIFY COLUMN)
-- ======================
-- Modify size of LOCATION column
ALTER TABLE student123
MODIFY location VARCHAR(30);

-- Describe table after modification
DESC student123;

-- ======================
-- DROP TABLE
-- ======================
-- Remove the table completely
DROP TABLE student123;
