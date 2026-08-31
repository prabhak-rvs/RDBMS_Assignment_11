-- StudentDetails View - Solution

CREATE TABLE Department (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(30)
);

CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(30),
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(30)
);

CREATE TABLE Enrollment (
EnrollmentID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Department VALUES
(1, 'CSE'),
(2, 'IT'),
(3, 'ECE');

INSERT INTO Student VALUES
(101, 'Arun', 1),
(102, 'Divya', 2),
(103, 'Karthik', 1);

INSERT INTO Course VALUES
(201, 'DBMS'),
(202, 'Java'),
(203, 'Python');

INSERT INTO Enrollment VALUES
(1, 101, 201),
(2, 101, 202),
(3, 102, 203),
(4, 103, 201);

CREATE VIEW StudentDetails AS
SELECT
s.StudentName,
c.CourseName,
d.DepartmentName
FROM Student s
JOIN Department d
ON s.DepartmentID = d.DepartmentID
JOIN Enrollment e
ON s.StudentID = e.StudentID
JOIN Course c
ON e.CourseID = c.CourseID;
