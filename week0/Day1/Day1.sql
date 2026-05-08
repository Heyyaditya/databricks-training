use new_schema;
CREATE TABLE Employee_Table ( emp_id INT,name VARCHAR(50),age INT,salary INT,department_id INT,hire_date DATE);

INSERT INTO Employee_Table VALUES(1,'John Doe', 28, 50000, 1,'2020-01-15'),
                                 (2,  'Jane Smith' , 34 , 60000,  2,  '2019-07-23'),
                                 (3,  'Bob Brown' , 45 , 80000,  1 , '2018-02-12'),
                                 (4 , 'Alice Blue',  25 , 45000 , 3 , '2021-03-22'),
                                 (5 , 'Charlie P.'  ,29 , 50000  ,2 , '2019-12-01');
SELECT * FROM Employee_Table;

CREATE TABLE Department_Table (department_id INT, name VARCHAR(30));

INSERT INTO Department_Table VALUES(1,'IT'),
									(2,'HR'),
                                    (3,'FINANCE'),
                                    (4,'MARKETING');

SELECT * FROM Department_Table;

CREATE TABLE Project_Table(project_id INT,name VARCHAR(20),department_id INT);
INSERT INTO Project_Table VALUES(1 ,'Project Alpha' ,1),
								(2, 'Project Beta',2),
                                (3, 'Project Gamma',1),
                                (4, 'Project Delta' ,3),
                                (5 , 'Project Epsilon',4);
SELECT * FROM Project_Table;
-- 1
SELECT * FROM Employee_Table;
-- 2
SELECT name ,salary FROM Employee_Table;
-- 3
SELECT name FROM Employee_Table WHERE age>30;
-- 4
SELECT name FROM Department_Table;
-- 5
SELECT name FROM Employee_Table WHERE department_id=1;
-- 6
SELECT name FROM Employee_Table WHERE name LIKE 'J%';
-- 7
SELECT name FROM Employee_Table WHERE name LIKE '%e';
-- 8
SELECT name FROM Employee_Table WHERE name LIKE '%a%';
-- 9
SELECT name FROM Employee_Table WHERE length(name) =9;
-- 10
SELECT name FROM Employee_Table WHERE name LIKE '_o%';
-- 11
use new_schema;
CREATE TABLE Employee_Table ( emp_id INT,name VARCHAR(50),age INT,salary INT,department_id INT,hire_date DATE);

INSERT INTO Employee_Table VALUES(1,'John Doe', 28, 50000, 1,'2020-01-15'),
                                 (2,  'Jane Smith' , 34 , 60000,  2,  '2019-07-23'),
                                 (3,  'Bob Brown' , 45 , 80000,  1 , '2018-02-12'),
                                 (4 , 'Alice Blue',  25 , 45000 , 3 , '2021-03-22'),
                                 (5 , 'Charlie P.'  ,29 , 50000  ,2 , '2019-12-01');
SELECT * FROM Employee_Table;

CREATE TABLE Department_Table (department_id INT, name VARCHAR(30));

INSERT INTO Department_Table VALUES(1,'IT'),
									(2,'HR'),
                                    (3,'FINANCE'),
                                    (4,'MARKETING');

SELECT * FROM Department_Table;

CREATE TABLE Project_Table(project_id INT,name VARCHAR(20),department_id INT);
INSERT INTO Project_Table VALUES(1 ,'Project Alpha' ,1),
								(2, 'Project Beta',2),
                                (3, 'Project Gamma',1),
                                (4, 'Project Delta' ,3),
                                (5 , 'Project Epsilon',4);
SELECT * FROM Project_Table;
-- 1
SELECT * FROM Employee_Table;
-- 2
SELECT name ,salary FROM Employee_Table;
-- 3
SELECT name FROM Employee_Table WHERE age>30;
-- 4
SELECT name FROM Department_Table;
-- 5
SELECT name FROM Employee_Table WHERE department_id=1;
-- 6
SELECT name FROM Employee_Table WHERE name LIKE 'J%';
-- 7
SELECT name FROM Employee_Table WHERE name LIKE '%e';
-- 8
SELECT name FROM Employee_Table WHERE name LIKE '%a%';
-- 9
SELECT name FROM Employee_Table WHERE length(name) =9;
-- 10
SELECT name FROM Employee_Table WHERE hire_date LIKE '_o%';
-- 11
SELECT name FROM Employee_Table WHERE hire_date LIKE '2020%';
-- 12
SELECT name FROM Employee_Table WHERE month(hire_date)=01;
-- 13
SELECT name FROM Employee_Table WHERE year(hire_date)<2019;
-- 14
SELECT name FROM Employee_Table WHERE year(hire_date)>=2021 and month(hire_date)>=3  and date(hire_date)>=1;
-- 15
SELECT name FROM Employee_Table WHERE year(hire_date)=2026 AND year(hire_date)=2025;
-- 16
SELECT sum(salary) FROM Employee_Table;
-- 17
SELECT avg(salary) FROM Employee_Table;
-- 18
SELECT min(salary) FROM Employee_Table;
-- 19
SELECT count(name),department_id FROM Employee_Table group by department_id;
-- 20
SELECT avg(salary),department_id FROM Employee_Table group by department_id;
-- 21
SELECT sum(salary),department_id FROM Employee_Table group by department_id;
-- 22
SELECT avg(age),department_id FROM Employee_Table group by department_id;
-- 23
SELECT count(name),year(hire_date) FROM Employee_Table group by year(hire_date);
-- 24
SELECT max(salary),department_id FROM Employee_table group by department_id;
-- 25
SELECT avg(salary),department_id FROM Employee_table group by department_id order by avg(salary) DESC LIMIT 1;
-- 26
SELECT department_id,count(name) FROM Employee_table group by department_id HAVING count(name)>2;
-- 27
SELECT avg(salary),department_id FROM Employee_table group by department_id HAVING avg(salary)>55000;
-- 28
SELECT year(hire_date) FROM Employee_table group by year(hire_date) HAVING count(name)>1;
-- 29
SELECT department_id , sum(salary) FROM Employee_table group by department_id HAVING sum(salary)<100000;
-- 30
SELECT department_id, max(salary) FROM Employee_table group by department_id HAVING MAX(salary)>75000;
-- 31
SELECT name FROM Employee_table order by salary ASC;
-- 32
SELECT name FROM Employee_table order by age DESC;
-- 33
SELECT name FROM Employee_table order by hire_date ASC;
-- 34
SELECT name,department_id,salary FROM Employee_table order by department_id,salary;
-- 35
SELECT department_id,sum(salary) FROM Employee_table group by department_id order by sum(salary);
-- 36
select Employee_table.name , Department_table.name FROM Employee_table INNER JOIN Department_table ON Employee_table.department_id=Department_table.department_id;
-- 37
select Project_table.name , Department_table.name FROM Project_table INNER JOIN Department_table ON Project_table.department_id=Department_table.department_id;
-- 38
select Employee_table.name , Project_table.name FROM Employee_table INNER JOIN Project_table ON Employee_table.department_id=Project_table.department_id;
-- 39
select Employee_table.name , Department_table.name FROM Employee_table right JOIN Department_table ON Employee_table.department_id=Department_table.department_id;
-- 40
select Employee_table.name , Department_table.name FROM Employee_table LEFT JOIN Department_table ON Employee_table.department_id=Department_table.department_id;
-- 41
select Employee_table.name , Project_table.name FROM Employee_table LEFT JOIN Project_table ON Employee_table.department_id=Project_table.department_id;
