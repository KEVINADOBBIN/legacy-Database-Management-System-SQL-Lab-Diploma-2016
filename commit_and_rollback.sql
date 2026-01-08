-- =========================================
-- COMMIT AND ROLLBACK
-- REGISTER NUMBER: 408CS15015
-- =========================================

-- Display original contents of project table
SELECT * FROM project6;

-- -----------------------------------------
-- ROLLBACK demonstration
-- -----------------------------------------
UPDATE project6
SET pname = 'amul'
WHERE pnumber = 1;

-- Undo the update
ROLLBACK;

-- Verify rollback
SELECT * FROM project6;

-- -----------------------------------------
-- COMMIT demonstration
-- -----------------------------------------
UPDATE project6
SET plocation = 'westindies'
WHERE pnumber = 10;

-- Make change permanent
COMMIT;

-- Try rollback after commit
ROLLBACK;

-- Verify commit
SELECT * FROM project6;
