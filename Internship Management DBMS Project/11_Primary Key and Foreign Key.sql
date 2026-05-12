-- 1. Create Result table with Primary Key and Foreign Keys

CREATE TABLE Result (
    Result_ID INT PRIMARY KEY,
    Student_ID INT,
    Internship_ID INT,
    Result_Status VARCHAR(20),

    FOREIGN KEY (Student_ID)
    REFERENCES Student(Student_ID),

    FOREIGN KEY (Internship_ID)
    REFERENCES Internship(Internship_ID)
);

-- 2. Add Primary Key to Company table

ALTER TABLE Company
MODIFY Company_Name VARCHAR(100);