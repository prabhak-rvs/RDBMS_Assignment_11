# RDBMS_Assignment_11
Create a view named StudentDetails# Assignment: Create StudentDetails View

## Objective

Create a SQL view named `StudentDetails` using the following tables:

* `Student(StudentID, StudentName, DepartmentID)`
* `Course(CourseID, CourseName)`
* `Enrollment(EnrollmentID, StudentID, CourseID)`
* `Department(DepartmentID, DepartmentName)`

The view should display:

* Student Name
* Course Name
* Department Name

## Requirements

1. Create the required tables.
2. Insert suitable sample values into the tables.
3. Create a view named `StudentDetails`.
4. The view must contain the following columns:

   * `StudentName`
   * `CourseName`
   * `DepartmentName`
5. Use appropriate `JOIN` conditions between Student, Course, Enrollment, and Department.
6. The view should display the students along with their enrolled courses and department names.

## Expected View Structure

```text
StudentDetails
-----------------------------------------
StudentName | CourseName | DepartmentName
-----------------------------------------
Arun        | DBMS       | CSE
Arun        | Java       | CSE
Divya       | Python     | IT
```

## Submission

Write your SQL solution in:

```text
starter.sql
```

Do not modify the test file.

The submission will be automatically evaluated using GitHub Actions.

