-- StudentDetails View Assignment
-- Write your SQL solution below.

-- Create Department table
CREATE TABLE Department (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(30)
);

-- Create Student table
CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(30),
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Create Course table
CREATE TABLE Course (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(30)
);

-- Create Enrollment table
CREATE TABLE Enrollment (
EnrollmentID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert sample Department values
INSERT INTO Department VALUES
(1, 'CSE'),
(2, 'IT'),
(3, 'ECE');

-- Insert sample Student values
INSERT INTO Student VALUES
(101, 'Arun', 1),
(102, 'Divya', 2),
(103, 'Karthik', 1);

-- Insert sample Course values
INSERT INTO Course VALUES
(201, 'DBMS'),
(202, 'Java'),
(203, 'Python');

-- Insert sample Enrollment values
INSERT INTO Enrollment VALUES
(1, 101, 201),
(2, 101, 202),
(3, 102, 203),
(4, 103, 201);

-- =====================================================
-- STUDENT TASK
-- Create a view named StudentDetails.
--------------------------------------

-- The view must display:
-- StudentName, CourseName, DepartmentName
------------------------------------------

-- Write your CREATE VIEW statement below.
-- =====================================================

-- YOUR CODE HERE
