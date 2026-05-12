-- Setup:
CREATE TABLE IF NOT EXISTS Application_Log (
Log_ID INT AUTO_INCREMENT PRIMARY KEY,
Application_ID INT,
Action VARCHAR(50)
);

-- Prevent negative stipend:
DELIMITER $$

CREATE TRIGGER check_stipend
BEFORE INSERT ON Internship
FOR EACH ROW

BEGIN

IF NEW.Stipend < 0 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Stipend cannot be negative';

END IF;

END $$

DELIMITER ;

-- set default application status:
DELIMITER $$

CREATE TRIGGER default_status
BEFORE INSERT ON Application
FOR EACH ROW

BEGIN

IF NEW.Status IS NULL THEN
SET NEW.Status = 'Pending';

END IF;

END $$

DELIMITER ;

-- Prevent empty student name:
DELIMITER $$

CREATE TRIGGER check_name
BEFORE INSERT ON Student
FOR EACH ROW

BEGIN

IF NEW.Name = '' THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Student name cannot be empty';

END IF;

END $$

DELIMITER ;

-- Log application insert:
DELIMITER $$

CREATE TRIGGER log_application
AFTER INSERT ON Application
FOR EACH ROW

BEGIN

INSERT INTO Application_Log(Application_ID, Action)
VALUES(NEW.Application_ID,'Application Added');

END $$

DELIMITER ;

-- Prevent duplicate company name:
DELIMITER $$

CREATE TRIGGER check_company
BEFORE INSERT ON Company
FOR EACH ROW

BEGIN

IF EXISTS (
SELECT * FROM Company
WHERE Company_Name = NEW.Company_Name
)

THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Company already exists';

END IF;

END $$

DELIMITER ;