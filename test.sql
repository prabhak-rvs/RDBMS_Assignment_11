-- Autograding Test for StudentDetails View

-- Check whether the view exists
SELECT CASE
WHEN COUNT(*) > 0 THEN 'PASS: StudentDetails view exists'
ELSE 'FAIL: StudentDetails view does not exist'
END AS View_Check
FROM information_schema.views
WHERE table_schema = DATABASE()
AND table_name = 'StudentDetails';

-- Check the number of columns in the view
SELECT CASE
WHEN COUNT(*) = 3 THEN 'PASS: View contains 3 columns'
ELSE 'FAIL: View should contain exactly 3 columns'
END AS Column_Check
FROM information_schema.columns
WHERE table_schema = DATABASE()
AND table_name = 'StudentDetails';

-- Check required column names
SELECT CASE
WHEN COUNT(*) = 3 THEN 'PASS: Required columns exist'
ELSE 'FAIL: Required columns are missing'
END AS Column_Name_Check
FROM information_schema.columns
WHERE table_schema = DATABASE()
AND table_name = 'StudentDetails'
AND column_name IN ('StudentName', 'CourseName', 'DepartmentName');

-- Check expected number of records
SELECT CASE
WHEN COUNT(*) = 4 THEN 'PASS: View contains expected records'
ELSE 'FAIL: Incorrect number of records'
END AS Record_Check
FROM StudentDetails;

-- Check expected data
SELECT CASE
WHEN COUNT(*) = 1 THEN 'PASS: Arun - DBMS - CSE found'
ELSE 'FAIL: Arun - DBMS - CSE not found'
END AS Data_Check_1
FROM StudentDetails
WHERE StudentName = 'Arun'
AND CourseName = 'DBMS'
AND DepartmentName = 'CSE';

SELECT CASE
WHEN COUNT(*) = 1 THEN 'PASS: Arun - Java - CSE found'
ELSE 'FAIL: Arun - Java - CSE not found'
END AS Data_Check_2
FROM StudentDetails
WHERE StudentName = 'Arun'
AND CourseName = 'Java'
AND DepartmentName = 'CSE';

SELECT CASE
WHEN COUNT(*) = 1 THEN 'PASS: Divya - Python - IT found'
ELSE 'FAIL: Divya - Python - IT not found'
END AS Data_Check_3
FROM StudentDetails
WHERE StudentName = 'Divya'
AND CourseName = 'Python'
AND DepartmentName = 'IT';

SELECT CASE
WHEN COUNT(*) = 1 THEN 'PASS: Karthik - DBMS - CSE found'
ELSE 'FAIL: Karthik - DBMS - CSE not found'
END AS Data_Check_4
FROM StudentDetails
WHERE StudentName = 'Karthik'
AND CourseName = 'DBMS'
AND DepartmentName = 'CSE';
