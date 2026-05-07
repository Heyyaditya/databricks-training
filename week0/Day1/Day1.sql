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
