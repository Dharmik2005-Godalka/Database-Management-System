-- 1. Increase stipend by 1000 for all internships.
UPDATE Internship
SET Stipend = Stipend + 1000
WHERE Internship_ID > 0;

-- 2. Update status to 'Selected' for Application_ID 1.
UPDATE Application
SET Status = 'Selected'
WHERE Application_ID = 1;

SET SQL_SAFE_UPDATES = 0;

-- 3. Delete rejected applications.
DELETE FROM Application
WHERE Status = 'Rejected';

-- 4. Update department from CE to Computer Engineering.
UPDATE Student
SET Department = 'Computer Engineering'
WHERE Department = 'CE';

-- 5. Update low stipend internships.
UPDATE Internship
SET Stipend = 120000
WHERE Stipend < 120000;