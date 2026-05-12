-- 1. List students with their application status.
SELECT s.Student_ID, s.Name, a.Status
FROM Student s
JOIN Application a
ON s.Student_ID = a.Student_ID;

-- 2. List internship role with company name.
SELECT i.Internship_ID, i.Role, c.Company_Name
FROM Internship i
JOIN Company c
ON i.Company_ID = c.Company_ID;

-- 3. Show application details with student names.
SELECT a.Application_ID, s.Name, a.Status
FROM Application a
JOIN Student s
ON a.Student_ID = s.Student_ID;

-- 4. List internship role with stipend.
SELECT Internship_ID, Role, Stipend
FROM Internship
WHERE Stipend > 150000;

-- 5. Show company-wise internship count.
SELECT Company_ID, COUNT(*) AS Internship_Count
FROM Internship
GROUP BY Company_ID;