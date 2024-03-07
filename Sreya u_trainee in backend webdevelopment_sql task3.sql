-- Task 2 - Create a table with 10 * 10 dimensions having both numeric and non numeric columns.
-- Build your own scenario and create corresponding queries. Minimum 15 scenarios

-- Eg: Scenario 1 - Choose names with age greater than 18
-- 	Select * from Table where age > 18;

-- Use all the commands shown below and create different meaningful scenarios.
-- SELECT
-- INSERT
-- DISTINCT
-- WHERE
-- AND
-- OR
-- IN
-- BETWEEN
DROP TABLE IF EXISTS Person;

CREATE TABLE Person (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    JoinDate DATE,
    Education VARCHAR(50),
    City VARCHAR(50),
    PhoneNumber VARCHAR(15)
);

INSERT INTO Person (ID, Name, Age, Gender, Department, Salary, JoinDate, Education, City, PhoneNumber) 
VALUES 
(1, 'Athira', 30, 'Female', 'HR', 50000.00, '2020-01-15', 'Bachelor', 'New York', '123-456-7890'),
(2, 'sreya', 35, 'Male', 'IT', 60000.00, '2019-05-20', 'Master', 'Los Angeles', '456-789-1234'),
(3, 'jinsha', 40, 'Male', 'Finance', 70000.00, '2018-03-10', 'Bachelor', 'Chicago', '789-123-4567'),
(4, 'meena', 25, 'Male', 'HR', 45000.00, '2021-09-05', 'Bachelor', 'Houston', '321-654-9870'),
(5, 'shilpa', 28, 'Female', 'Marketing', 55000.00, '2020-11-30', 'Master', 'San Francisco', '654-987-3210'),
(6, 'lakshmi', 33, 'Male', 'IT', 62000.00, '2019-07-15', 'Bachelor', 'Seattle', '987-321-6540'),
(7, 'neethu', 37, 'Female', 'Finance', 75000.00, '2018-06-20', 'Master', 'Boston', '789-456-1230'),
(8, 'kavya', 42, 'Male', 'HR', 80000.00, '2017-04-25', 'PhD', 'Dallas', '456-123-7890'),
(9, 'krishna', 29, 'Female', 'Marketing', 60000.00, '2020-02-10', 'Bachelor', 'Miami', '987-654-3210'),
(10, 'mini', 32, 'Male', 'IT', 65000.00, '2019-08-15', 'Master', 'Atlanta', '123-789-4560');

SELECT * FROM Person;

SELECT * FROM Person WHERE Age > 30;

SELECT DISTINCT City FROM Person;

SELECT * FROM Person WHERE Department = 'HR';

SELECT * FROM Person WHERE Department = 'IT' AND Salary > 40000;

SELECT * FROM Person WHERE Department = 'HR' OR Salary > 60000;

SELECT * FROM Person WHERE Department IN ('HR', 'IT');

SELECT * FROM Person WHERE Age BETWEEN 30 AND 40;

SELECT * FROM Person ORDER BY Age DESC;

SELECT * FROM Person ORDER BY Age DESC LIMIT 5;

SELECT Department, COUNT(*) AS EmployeeCount FROM Person GROUP BY Department;

SELECT Department, COUNT(*) AS EmployeeCount FROM Person GROUP BY Department HAVING COUNT(*) > 2;

SELECT * FROM Person WHERE Name LIKE 'A%';

SELECT * FROM Person WHERE City IS NULL;

SELECT * FROM Person WHERE City LIKE  'mi___';













