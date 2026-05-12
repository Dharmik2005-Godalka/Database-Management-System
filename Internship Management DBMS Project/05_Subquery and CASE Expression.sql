-- Count total students in each department.
SELECT Department, COUNT(*) 
FROM Student
GROUP BY Department;

-- Find maximum stipend offered.
SELECT MAX(Stipend)
FROM Internship;

-- Count number of applications for each status.
SELECT Status, COUNT(*)
FROM Application
GROUP BY Status;

-- Display departments having more than 2 students.
SELECT Department, COUNT(*)
FROM Student
GROUP BY Department
HAVING COUNT(*) > 2;

-- Find total stipend offered by each company.
SELECT Company_ID, SUM(Stipend)
FROM Internship
GROUP BY Company_ID;
