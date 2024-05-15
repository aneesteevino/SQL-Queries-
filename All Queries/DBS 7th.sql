CREATE DATABASE People;
USE People;

CREATE TABLE Employee (
  id INT,
  name VARCHAR(50),
  gender CHAR,
  salary DECIMAL(10, 2),
  age INT,
  date_of_birth DATE,
  city VARCHAR(50),
  department VARCHAR(50)
);
INSERT INTO Employee (id, name,gender, salary, age, date_of_birth, city, department) VALUES
(1, 'Abdullah','M', 50000.00, 30, '1992-05-15', 'New York', 'IT'),
(2, 'Aisha','F', 60000.00, 28, '1994-08-22', 'Los Angeles', 'HR'),
(3, 'Fatima','F', 75000.00, 35, '1987-12-10', 'Chicago', 'Finance'),
(4, 'Mustafa','M', 80000.00, 32, '1990-04-05', 'San Francisco', 'Marketing'),
(5, 'Muhammad','M', 70000.00, 29, '1993-07-18', 'Seattle', 'IT'),
(6,'Aminah','F',4000.00, 40,'1985-05-18', 'Springfield','SW'),
(7, 'Asma','F', 3500.00, 32, '1992-03-15', 'New York', 'HR'),
(8, 'Anwar','M', 4200.00, 28, '1996-11-25', 'Los Angeles', 'Marketing'),
(9, 'Amin','M', 5000.00, 35, '1989-07-08', 'Chicago', 'Finance'),
(10, 'Ahmad','M', 3800.00, 30, '1994-02-19', 'San Francisco', 'IT'),
(11, 'Ayman','F', 4100.00, 31, '1993-09-22', 'Seattle', 'Operations'),
(12, 'Yasir','M', 4400.00, 29, '1995-06-14', 'Boston', 'Sales'),
(13, 'Arif','M', 3700.00, 34, '1991-04-10', 'Houston', 'Research'),
(14, 'Rayan','M', 3900.00, 33, '1990-08-03', 'Philadelphia', 'Development'),
(15, 'Zayd','M', 4600.00, 27, '1997-12-30', 'Denver', 'Production'),
(16, 'Maham','F', 4300.00, 26, '1998-10-17', 'Atlanta', 'Quality Assurance'),
(17, 'Azam','M', 4000.00, 36, '1988-01-28', 'Miami', 'Customer Service'),
(18, 'Akram','M', 4800.00, 38, '1986-06-05', 'Dallas', 'Supply Chain'),
(19, 'Layla','F', 4500.00, 37, '1987-09-09', 'Phoenix', 'Logistics'),
(20, 'Aminah','F', 4000.00, 40, '1985-05-18', 'Sea side', 'CSE');

-- drop table Employee;
 -- Like wise operstors--
 
-- Pattern: 'a%'
SELECT name FROM Employee WHERE name LIKE 'a%';

-- Pattern: '%a'
SELECT name FROM Employee WHERE name LIKE '%a';

-- Pattern: '%am%'
SELECT name FROM Employee WHERE name LIKE '%am%';

-- Pattern: 'a%m'
SELECT name FROM Employee WHERE name LIKE 'a%m';

-- Pattern: '_a%'
SELECT name FROM Employee WHERE name LIKE '_a%';

-- Pattern: '___a%'
SELECT name FROM Employee WHERE name LIKE '___a%';

-- Pattern: '__ya%'
SELECT name FROM Employee WHERE name LIKE '__ya%';
-- 1st Query
SELECT * FROM Employee where age=30;
-- 2nd Query
SELECT * FROM Employee WHERE age BETWEEN 30 AND 40;
-- 3rd Query
SELECT * FROM Employee WHERE department='IT';
-- 4th Query
SELECT * FROM Employee WHERE city='Chicago' or city='Seattle';
-- 5th Query
SELECT * FROM Employee WHERE name  IN ('Amin', 'Aminah');
-- 6th Query
SELECT * FROM Employee WHERE name NOT IN ('Amin', 'Aminah');
-- 7th Query
SELECT * FROM Employee ORDER BY age ASC;
-- 8th Query
SELECT * FROM Employee ORDER BY age desc;
-- 9th Query
SELECT * FROM Employee WHERE age  IN (30,40);
-- 10th Query
SELECT * FROM Employee WHERE age NOT IN (30,40);
-- 11th Query
SELECT * FROM Employee WHERE age BETWEEN 29 AND 35;
-- 12th Query
SELECT * FROM Employee ORDER BY name ASC;
SELECT * FROM Employee ORDER BY name DESC;

SELECT distinct city FROM Employee ;
SELECT distinct age FROM Employee ;
SELECT distinct name FROM Employee ;
SELECT distinct department FROM Employee ;
SELECT * FROM Employee WHERE date_of_birth IS NULL;
SELECT * FROM Employee WHERE department IS NULL;
SELECT * FROM Employee WHERE city IS NOT NULL;
SELECT * FROM Employee WHERE salary IS NOT NULL;
SELECT min(age)  FROM Employee;
SELECT max(age)  FROM Employee;
SELECT  AVG(age) AS avg_age FROM Employee;
SELECT MIN(age) AS min_age,MAX(age) AS max_age,AVG(age) AS avg_age FROM Employee;
SELECT COUNT(*) AS total_employees FROM Employee;
SELECT COUNT(*) AS male_employees FROM Employee WHERE gender = 'M';
SELECT COUNT(*) AS female_employees FROM Employee WHERE gender = 'F';
SELECT COUNT(*) AS employees_over_30 FROM Employee WHERE age > 30;
SELECT COUNT(*) AS employees_over_30 FROM Employee WHERE age = 30 or age=28;

-- CREATE VIEW Employee_View AS
-- SELECT *
-- FROM Employee;
-- select*from Employee;
select *from  Employee where salary>5000.0;
SELECT * FROM Employee WHERE age = 33;
SELECT * FROM Employee WHERE age < 10;
SELECT * FROM Employee WHERE age >= 30;
SELECT * FROM Employee WHERE age <40;
SELECT * FROM Employee WHERE department <> 'Marketing';
SELECT * FROM Employee WHERE age BETWEEN 18 AND 30;
SELECT * FROM Employee WHERE age >18 AND age < 30;
SELECT * FROM Employee WHERE name LIKE 'Y%';
SELECT * FROM Employee WHERE department IN ('HR', 'Finance');





