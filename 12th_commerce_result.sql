create database  students_result;
use  students_result;
show tables;
CREATE TABLE students_result (s_no INT,roll_no BIGINT,
    student_name VARCHAR(50),
    father_name VARCHAR(50),
    english INT,
    hindi INT,
    business INT,
    accountancy INT,
    economics INT,
    maths INT,
    total INT,
    percentage DECIMAL(5,2)
);

INSERT INTO students_result
(s_no, roll_no, student_name, father_name, english, hindi, business, accountancy, economics, maths, total, percentage)
VALUES
(1, 3026366720, 'AMAN', 'SHER SINGH', 77, 89, 78, 81, 71, 54, 396, 79.2),
(2, 3026366721, 'ANKIT', 'NEERAJ KUMAR', 77, 83, 74, 78, 65, NULL, 377, 75.4),
(3, 3026366693, 'ANU SAKET', 'RAM KUMAR SAKET', 92, 95, 98, 92, 95, NULL, 472, 94.4),
(4, 3026366724, 'ARYAN SHARMA', 'GANGA RAM', 62, 78, 60, 68, 61, NULL, 329, 65.8),
(5, 3026366728, 'DAKSH KUMAR', 'KRISHAN GOPAL', 73, 64, 82, 70, 59, NULL, 348, 69.6),
(6, 3026366695, 'DEEPANSHI', 'SUNDER SINGH', 92, 91, 90, 79, 94, NULL, 446, 89.2),
(7, 3026366731, 'DHRUV', 'GANGA RAM', 49, 70, 63, 66, 57, NULL, 305, 61.0),
(8, 3026366697, 'DIVYA', 'JITENDER KASHYAP', 84, 98, 96, 85, 89, NULL, 452, 90.4),
(9, 3026366700, 'GAYATRI', 'MUKESH KUMAR', 100, 99, 96, 96, 97, NULL, 488, 97.6),
(10, 3026366737, 'HARSH', 'MAHENDER', 59, 65, 63, 70, 59, NULL, 316, 63.2),
(11, 3026366739, 'HARSH KUMAR', 'PAWAN KUMAR', 84, 77, 92, 84, 88, NULL, 425, 85.0),
(12, 3026366742, 'HITESH', 'NETRAPAL', 77, 66, 60, 73, 69, 49, 345, 69.0),
(13, 3026366703, 'JYOTI', 'RAJU', 53, 83, 79, 76, 70, NULL, 361, 72.2),
(14, 3026366746, 'KRISH', 'HARKESH', 50, 59, 64, 72, 54, NULL, 299, 59.8),
(15, 3026366750, 'KUNAL', 'PREM PRAKASH', 75, 83, 79, 78, 92, NULL, 407, 81.4),
(16, 3026366751, 'MADHU SUDAN', 'LAXMAN', 93, 88, 85, 92, 98, 48, 456, 91.2),
(17, 3026366752, 'MANISH', 'RAJU', 58, 89, 70, 80, 79, NULL, 376, 75.2),
(18, 3026366706, 'MEGHNA', 'DEV DUTT SHARMA', 86, 81, 85, 82, 81, NULL, 415, 83.0),
(19, 3026366709, 'PAYAL', 'NEEARAJ KUMAR', 86, 98, 99, 96, 93, NULL, 472, 94.4),
(20, 3026366708, 'PAYAL', 'RAJESH KUMAR', 98, 94, 91, 86, 82, NULL, 451, 90.2),
(21, 3026366756, 'PRINCE', 'MADAN LAL', 89, 92, 82, 83, 88, NULL, 434, 86.8),
(22, 3026366757, 'PRINCE', 'SUBE SINGH', 53, 80, 61, 67, 57, NULL, 318, 63.6),
(23, 3026366711, 'PRIYANKA', 'RAJ KUMAR', 92, 66, 84, 77, 76, NULL, 415, 83.0),
(24, 3026366758, 'RAHUL', 'DINESH KUMAR', 98, 96, 89, 82, 96, 47, 461, 92.2),
(25, 3026366762, 'SACHIN', 'SITA RAM', 82, 76, 74, 77, 83, NULL, 392, 78.4),
(26, 3026366761, 'SACHIN', 'SUNIL', 60, 69, 65, 67, 62, NULL, 323, 64.6),
(27, 3026366763, 'SAGAR', 'HARI CHAND', 78, 73, 70, 82, 72, 51, 375, 75.0),
(28, 3026366767, 'SUBHAM', 'SAURABH SHARMA', 77, 82, 84, 82, 85, NULL, 410, 82.0),
(29, 3026366768, 'TANYA SHARMA', 'MUKESH KUMAR', 82, 71, 63, 65, 53, NULL, 334, 66.8);
select * from students_result;
SELECT * FROM students_result ORDER BY total DESC LIMIT 1;
SELECT * FROM students_result ORDER BY total DESC LIMIT 3;
SELECT * FROM students_result ORDER BY total asc LIMIT 1;
SELECT * FROM students_result ORDER BY total asc LIMIT 3;
select student_name,percentage from students_result;
select student_name,percentage from students_result where percentage>90 ;
select student_name, english from students_result where english < 60;
SELECT student_name, maths FROM students_result WHERE maths IS NOT NULL;
SELECT AVG(percentage) AS avg_top5_percentage FROM (select percentage from students_result order by percentage desc limit 5) as top5;
select count(*) as total_students from students_result;
select avg(accountancy) as avg_acc from students_result;
select student_name,percentage from students_result order by percentage desc ;
select student_name,percentage from students_result where percentage between 80 and 90;
SELECT student_name FROM students_result WHERE student_name LIKE 'P%';
SELECT student_name, father_name FROM students_result WHERE father_name LIKE '%KUMAR%';
select min(hindi) as least_hindi from students_result;
SELECT student_name, economics FROM students_result ORDER BY economics DESC LIMIT 1;
SELECT student_name, business
FROM students_result
WHERE business > (
    SELECT AVG(business)
    FROM students_result
);
SELECT student_name,
       percentage,
       CASE
           WHEN percentage >= 90 THEN 'A+'
           WHEN percentage >= 75 THEN 'A'
           WHEN percentage >= 60 THEN 'B'
           ELSE 'C'
       END AS grade
FROM students_result;
SELECT MAX(percentage) AS second_highest
FROM students_result
WHERE percentage < (
    SELECT MAX(percentage)
    FROM students_result
);
SELECT student_name, COUNT(*)
FROM students_result
GROUP BY student_name
HAVING COUNT(*) > 1;
CREATE VIEW toppers AS
SELECT student_name, percentage
FROM students_result
WHERE percentage > 90;
UPDATE students_result
SET maths = 50
WHERE student_name = 'RAHUL';
SELECT student_name, percentage
FROM students_result
WHERE percentage > (
    SELECT AVG(percentage)
    FROM students_result
);
SELECT student_name, percentage
FROM students_result
WHERE percentage > (
    SELECT AVG(percentage)
    FROM students_result
);
SELECT student_name, percentage
FROM students_result
WHERE percentage > (
    SELECT AVG(percentage)
    FROM students_result
);
