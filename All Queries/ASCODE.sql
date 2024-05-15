Create database Ascode;
use Ascode;
create table students(
Id INT ,
age integer,
date_of_birth Datetime, 
Name VARCHAR(50),
Gender Varchar(2),
Round_01_marks INT NOT NULL,
Round_02_marks INT NOT NULL,
Grade VARCHAR(5),
City VARCHAR (20),
Department Text not null,
Self_or_merit Text not null
);
-- drop table students;
INSERT INTO students (Id,age, Name,Gender,date_of_birth,Round_01_marks , Round_02_marks, Grade, City, Department,Self_or_merit ) VALUES
(1,	 18, 'Abdullah', 'M',  '1992-05-15',  105, 150, 'A',  'New York',      'IT',				'Merit'),
(2,	 20, 'Aisha',	 'F',  '1994-08-22',  100, 155, 'A1', 'Los Angeles',   'HR',				'self'),
(3,  21, 'Fatima',   'F',  '1987-12-10',  170, 150, 'B',  'Chicago',       'Finance',			'Merit'),
(4,  22, 'Mustafa',	 'M',  '1990-04-05',  140, 195, 'C',  'San Francisco', 'Marketing',			'Merit'),
(5,  18, 'Muhammad', 'M',  '1993-07-18',  180, 165, 'A',  'Seattle', 	   'IT',				'Merit'),
(6,	 25, 'Aminah',	 'F',  '1985-05-18',  150, 155, 'D',  'Sea side',	   'CSE',				'self'),
(7,  35, 'Asma',	 'F',  '1992-03-15',  100, 70,  'A',  'New York', 	   'HR',				'self'),
(8,  44, 'Anwar',	 'M',  '1996-11-25',  109, 150, 'A1', 'Los Angeles',   'Marketing', 		'Merit'),
(9,  23, 'Amin', 	 'M',  '1989-07-08',  145, 155, 'E',  'Chicago', 	   'Finance', 			'self'),
(10, 23, 'Ahmad',	 'M',  '1994-02-19',  140, 105, 'A',  'San Francisco', 'IT',				'self'),
(11, 42, 'Ayman',	 'F',  '1993-09-22',  130, 165, 'A',  'Seattle', 	   'Operations',		'self'),
(12, 30, 'Yasir',	 'M',  '1995-06-14',  107, 154, 'A1', 'Boston', 	   'Sales',				'self'),
(13, 34, 'Arif',	 'M',  '1991-04-10',  156, 146, 'A1', 'Houston', 	   'Research',			'Merit'),
(14, 23, 'Rayan',	 'M',  '1990-08-03',  103, 185, 'A',  'Philadelphia',  'Development',		'self'),
(15, 44, 'Zayd',	 'M',  '1997-12-30',  110, 195, 'B',  'Denver',  	   'Production', 		'self'),
(16, 34, 'Maham',	 'F',  '1998-10-17',  120, 145, 'A',  'Atlanta', 	   'Quality Assurance', 'Merit'),
(17, 43, 'Azam',	 'M',  '1988-01-28',  130, 135, 'A1', 'Miami', 	       'Customer Service',  'self'),
(18, 22, 'Akram', 	 'M',  '1986-06-05',  160, 125, 'B',  'Dallas', 	   'Supply Chain',  	'Merit'),
(19, 22, 'Layla',	 'F',  '1987-09-09',  140, 175, 'C',  'Phoenix', 	   'Logistics',			'self'),
(20, 21, 'Aminah',	 'F',  '1985-05-18',  160, 139, 'B',  'Sea side', 	   'CSE',				'Merit');


select *from  students;


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
SELECT * FROM Employee WHERE name NOT IN ('Amin', 'Aminah');
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
