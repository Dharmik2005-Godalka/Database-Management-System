-- IFNULL Function:
SELECT Name,
IFNULL(Department,'No Department') AS Department
FROM Student;

-- COALESCE Function:
SELECT Name,
COALESCE(Department,'No Data') AS Dept
FROM Student;

-- IS NULL Function:
SELECT *
FROM Application
WHERE Status IS NULL;

-- Create Index on Student Name:
CREATE INDEX idx_student_name
ON Student(Name);

-- Multi-column Index:
CREATE INDEX idx_application
ON Application(Student_ID, Internship_ID);