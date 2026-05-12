-- 1. Create View
CREATE VIEW student_application_view AS

SELECT s.Student_ID,
s.Name,
a.Status

FROM Student s
JOIN Application a
ON s.Student_ID = a.Student_ID;

-- 2. Display View Data
SELECT * FROM student_application_view;

-- 3. Update through View
UPDATE student_application_view
SET Status = 'Selected'
WHERE Student_ID = 1;

-- 4. Check Original Table
SELECT * FROM Application;