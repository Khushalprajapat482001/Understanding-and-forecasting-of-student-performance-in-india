SHOW DATABASES;

USE student_db;

SELECT * FROM students LIMIT 5;

DROP TABLE students1;

SELECT * FROM students ORDER BY average_score DESC LIMIT 10;

CREATE TABLE students (
    gender VARCHAR(10),
    race_ethnicity VARCHAR(20),
    parental_level_of_education VARCHAR(50),
    lunch VARCHAR(20),
    test_preparation_course VARCHAR(20),
    math_score INT,
    reading_score INT,
    writing_score INT,
    average_score FLOAT,
    performance_category VARCHAR(10),
    prep_effective VARCHAR(20)
    );
    
    SELECT * FROM students LIMIT 5;
    
SELECT gender,
avg(math_score) as avg_math,
avg(reading_score) as avg_reading,
avg(writing_score) as avg_writing
FROM students
GROUP BY gender;
    
SELECT prep_effective, avg(average_score) AS avg_score
FROM students
GROUP BY prep_effective;

SELECT test_preparation_course, AVG(average_score) AS avg_score
FROM students
GROUP BY test_preparation_course;

SELECT performance_category, count(performance_category) As counts FROM students
GROUP BY performance_category;

SELECT race_ethnicity, AVG(average_score) FROM students 
GROUP BY race_ethnicity
ORDER BY AVG(average_score) DESC LIMIT 1;

SELECT performance_category, COUNT(*) AS student_count
FROM students
GROUP BY performance_category;

SHOW TABLES;
SELECT * FROM students1 LIMIT 10;
DESCRIBE students1;

CREATE DATABASE student1_db;
USE student1_db;
CREATE TABLE students1(
    gender VARCHAR(10),
    race_ethnicity VARCHAR(20),
    parental_level_of_education VARCHAR(50),
    lunch VARCHAR(20),
    test_preparation_course VARCHAR(20),
    math_score INT,
    reading_score INT,
    writing_score INT,
    average_score FLOAT,
    performance_category VARCHAR(10),
    prep_effective VARCHAR(20)
    );
