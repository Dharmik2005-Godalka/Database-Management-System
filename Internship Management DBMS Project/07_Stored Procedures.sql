-- Add new student using procedure.
DELIMITER $$

CREATE PROCEDURE add_student(
IN sid INT,
IN sname VARCHAR(50),
IN dept VARCHAR(20)
)

BEGIN
INSERT INTO Student VALUES(sid, sname, dept);
END $$

DELIMITER ;
CALL add_student(11,'Meet','IT');

-- Get internship stipend using procedure.
DELIMITER $$

CREATE PROCEDURE get_stipend(
IN iid INT
)

BEGIN
SELECT Internship_ID, Stipend
FROM Internship
WHERE Internship_ID = iid;
END $$

DELIMITER ;
CALL get_stipend(2);

-- Count total students in a department.
DELIMITER $$

CREATE PROCEDURE student_count(
IN dept VARCHAR(20)
)

BEGIN
SELECT COUNT(*) AS Total_Students
FROM Student
WHERE Department = dept;
END $$

DELIMITER ;
CALL student_count('CE');

-- Update internship stipend.
DELIMITER $$

CREATE PROCEDURE update_stipend(
IN iid INT,
IN new_stipend INT
)

BEGIN
UPDATE Internship
SET Stipend = new_stipend
WHERE Internship_ID = iid;
END $$

DELIMITER ;
CALL update_stipend(1,130000);

-- Get application status.
DELIMITER $$

CREATE PROCEDURE get_status(
IN aid INT
)

BEGIN
SELECT Application_ID, Status
FROM Application
WHERE Application_ID = aid;
END $$

DELIMITER ;
CALL get_status(2);

CALL add_student(11,'Meet','IT');