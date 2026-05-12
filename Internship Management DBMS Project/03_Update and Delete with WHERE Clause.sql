-- Increase stipend by 1000 for all internships.
UPDATE Internship
SET Stipend = Stipend + 1000;

-- Update status to 'Selected' for Application_ID 1
UPDATE Application
SET Status = 'Selected'
WHERE Application_ID = 1;

-- Delete rejected applications.
DELETE FROM Application
WHERE Status = 'Rejected';

-- Update department from CE to Computer Engineering.
UPDATE Student
SET Department = 'Computer Engineering'
WHERE Department = 'CE';

-- Delete internships with stipend less than 120000.
DELETE FROM Internship
WHERE Stipend < 120000;