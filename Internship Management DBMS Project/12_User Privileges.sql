-- 1. Create new user
CREATE USER 'student1'@'localhost'
IDENTIFIED BY '1234';

-- 2. Grant permissions
GRANT SELECT, INSERT
ON InternshipDB.Student
TO 'student1'@'localhost';

GRANT SELECT
ON InternshipDB.Company
TO 'student1'@'localhost';

-- 4. Test action (after login as student1)
SELECT * FROM Student;

-- 5. Unauthorized action (will give error)
DELETE FROM Student
WHERE Student_ID = 1;
