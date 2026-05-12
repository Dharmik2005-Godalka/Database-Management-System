-- 1. Change size of Name column in Student table
ALTER TABLE Student
MODIFY Name VARCHAR(100);

-- 2. Add NOT NULL constraint on Company_Name
ALTER TABLE Company
MODIFY Company_Name VARCHAR(50) NOT NULL;

-- 3. Make Company_Name unique
ALTER TABLE Company
ADD UNIQUE(Company_Name);

-- 4. Rename column Name to Student_Name
ALTER TABLE Student
CHANGE Name Student_Name VARCHAR(100);

-- 5. Add new column Email in Student table
ALTER TABLE Student
ADD Email VARCHAR(50);