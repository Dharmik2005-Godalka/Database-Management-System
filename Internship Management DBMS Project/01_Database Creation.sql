-- Creating the Dataset

DROP DATABASE InternshipDB;
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
    Stipend INT,
    FOREIGN KEY (Company_ID) REFERENCES Company(Company_ID)
);

CREATE TABLE Application (
    Application_ID INT PRIMARY KEY,
    Student_ID INT,
    Internship_ID INT,
    Status VARCHAR(20),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Internship_ID) REFERENCES Internship(Internship_ID)
);