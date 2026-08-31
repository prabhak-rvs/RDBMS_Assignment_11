-- ============================================
-- StudentDetails View - Autograding Test
-- ============================================

-- Test 1: Check whether the view exists
SELECT CASE
    WHEN COUNT(*) = 1
    THEN 'PASS: StudentDetails view exists'
    ELSE 'FAIL: StudentDetails view does not exist'
END AS View_Check
FROM information_schema.views
WHERE table_schema = DATABASE()
AND table_name = 'StudentDetails';


-- Test 2: Check number of columns
SELECT CASE
    WHEN COUNT(*) = 3
    THEN 'PASS: View contains 3 columns'
    ELSE 'FAIL: View should contain exactly 3 columns'
END AS Column_Check
FROM information_schema.columns
WHERE table_schema = DATABASE()
AND table_name = 'StudentDetails';


-- Test 3: Check required column names
SELECT CASE
    WHEN COUNT(*) = 3
    THEN 'PASS: Required columns exist'
    ELSE 'FAIL: Required columns are missing'
END AS Column_Name_Check
FROM information_schema.columns
WHERE table_schema = DATABASE()
AND table_name = 'StudentDetails'
AND column_name IN (
    'StudentName',
    'CourseName',
    'DepartmentName'
);


-- =================================================
-- Only run the following tests if the view exists
-- =================================================

SET @view_exists = (
    SELECT COUNT(*)
    FROM information_schema.views
    WHERE table_schema = DATABASE()
    AND table_name = 'StudentDetails'
);


-- Test 4: Check expected number of records
SET @sql = IF(
    @view_exists = 1,
    'SELECT CASE WHEN COUNT(*) = 4 THEN ''PASS: Correct number of records'' ELSE ''FAIL: Incorrect number of records'' END AS Record_Check FROM StudentDetails',
    'SELECT ''FAIL: StudentDetails view does not exist'' AS Record_Check'
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


-- Test 5: Arun - DBMS - CSE
SET @sql = IF(
    @view_exists = 1,
    'SELECT CASE WHEN COUNT(*) = 1 THEN ''PASS: Arun - DBMS - CSE'' ELSE ''FAIL: Arun - DBMS - CSE missing'' END AS Data_Check_1 FROM StudentDetails WHERE StudentName = ''Arun'' AND CourseName = ''DBMS'' AND DepartmentName = ''CSE''',
    'SELECT ''FAIL: StudentDetails view does not exist'' AS Data_Check_1'
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


-- Test 6: Arun - Java - CSE
SET @sql = IF(
    @view_exists = 1,
    'SELECT CASE WHEN COUNT(*) = 1 THEN ''PASS: Arun - Java - CSE'' ELSE ''FAIL: Arun - Java - CSE missing'' END AS Data_Check_2 FROM StudentDetails WHERE StudentName = ''Arun'' AND CourseName = ''Java'' AND DepartmentName = ''CSE''',
    'SELECT ''FAIL: StudentDetails view does not exist'' AS Data_Check_2'
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


-- Test 7: Divya - Python - IT
SET @sql = IF(
    @view_exists = 1,
    'SELECT CASE WHEN COUNT(*) = 1 THEN ''PASS: Divya - Python - IT'' ELSE ''FAIL: Divya - Python - IT missing'' END AS Data_Check_3 FROM StudentDetails WHERE StudentName = ''Divya'' AND CourseName = ''Python'' AND DepartmentName = ''IT''',
    'SELECT ''FAIL: StudentDetails view does not exist'' AS Data_Check_3'
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


-- Test 8: Karthik - DBMS - CSE
SET @sql = IF(
    @view_exists = 1,
    'SELECT CASE WHEN COUNT(*) = 1 THEN ''PASS: Karthik - DBMS - CSE'' ELSE ''FAIL: Karthik - DBMS - CSE missing'' END AS Data_Check_4 FROM StudentDetails WHERE StudentName = ''Karthik'' AND CourseName = ''DBMS'' AND DepartmentName = ''CSE''',
    'SELECT ''FAIL: StudentDetails view does not exist'' AS Data_Check_4'
);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
