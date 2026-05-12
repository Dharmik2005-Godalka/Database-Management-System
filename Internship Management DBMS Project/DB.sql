-- Creating the Dataset

DROP DATABASE IF EXISTS InternshipDB;
CREATE DATABASE InternshipDB;
USE InternshipDB;

-- Creating all Tables

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(20)
);

CREATE TABLE Company (
    Company_ID INT PRIMARY KEY,
    Company_Name VARCHAR(50)
);

CREATE TABLE Internship (
    Internship_ID INT PRIMARY KEY,
    Company_ID INT,
    Role VARCHAR(50),
    Stipend INT
);

CREATE TABLE Application (
    Application_ID INT PRIMARY KEY,
    Student_ID INT,
    Internship_ID INT,
    Status VARCHAR(20)
);

-- Inserting Data into Student Table

INSERT INTO Student VALUES
(1,'Aum','ICT'),
(2,'Harsh','CE'),
(3,'Viraj','CS'),
(4,'Diya','ICT'),
(5,'Dhwani','Mechanical'),
(6,'Vishant','IT'),
(7,'Diva','CE'),
(8,'Prem','Mechanical'),
(9,'Shreyanshi','IT'),
(10,'Rishi','CE');

-- Inserting Data into Company Table

INSERT INTO Company VALUES
(1,'Netflix'),
(2,'Infosys'),
(3,'Google'),
(4,'Facebook');

-- Inserting Data into Internship Table

INSERT INTO Internship VALUES
(1,1,'Developer',120000),
(2,2,'Analyst',155000),
(3,3,'Tester',800000),
(4,1,'Web Developer',120000),
(5,2,'Data Analyst',145000),
(6,3,'Support',950000),
(7,4,'Software Engineer',135000),
(8,1,'Backend Developer',110000);

-- Inserting Data into Application Table

INSERT INTO Application VALUES
(1,1,1,'Pending'),
(2,2,2,'Selected'),
(3,3,3,'Rejected'),
(4,4,4,'Pending'),
(5,5,5,'Selected'),
(6,6,6,'Pending'),
(7,7,7,'Rejected'),
(8,8,8,'Selected'),
(9,9,1,'Pending'),
(10,10,2,'Selected');

-- Displaying all Tables

SELECT * FROM Student;
SELECT * FROM Company;
SELECT * FROM Internship;
SELECT * FROM Application;

