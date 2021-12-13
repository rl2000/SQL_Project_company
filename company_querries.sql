
USE company;

SELECT * FROM employee;
SELECT * FROM branch;
SELECT * FROM branch_supplier;
SELECT * FROM client;
SELECT * FROM works_with;

--Employee Table query---------------------------------------------------------------

-- Find all employees ordered by salary.
SELECT first_name, last_name, salary
FROM employee
ORDER BY salary DESC;

-- Find all employees ordered by sex then name.
SELECT sex, first_name, last_name
FROM employee;

-- Find the first 5 employees in the table.
--SELECT *
--FROM employee
--LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, last_name
FROM employee;

--  Find out all the different genders
SELECT sex
FROM employee
GROUP BY sex;

SELECT DISTINCT sex
FROM employee;

-- Find all male employees
SELECT *
FROM employee
WHERE sex = 'M';

--Branch Table Query----------------------------------------------------------------------

SELECT * FROM branch;

-- Find all employees at branch 2.

SELECT e.first_name, e.last_name, b.branch_id
FROM employee AS e
INNER JOIN branch AS b
ON e.branch_id =b.branch_id
WHERE b.branch_id = 2;

SELECT * 
FROM employee
WHERE branch_id=2;

-- Find all employee's id's and names who were born after 1969
SELECT emp_id, first_name, last_name, birth_day
FROM employee
WHERE (birth_day > '1969-12-31');


-- Find all female employees at branch 2
SELECT * 
FROM employee
WHERE (branch_id=2)AND(sex='F');

-- Find all employees who are female & born after 1969 or who make over 80000
SELECT *
FROM employee
WHERE (sex='F'AND birth_day > '1969-12-31')OR salary > 80000;

--- Find all employees born between 1970 and 1975
SELECT *
FROM employee
WHERE birth_day BETWEEN '1970-01-01' AND'1975-12-31';

-- Find all employees named Jim, Michael, Johnny or David
SELECT *
FROM employee
WHERE first_name IN ('JIM','Michael','Jhonny','David');

--FUNCTIONS------------------------------------------------------------------------------------------
SELECT * FROM employee;

-- Find the number of employees.
SELECT COUNT(*) AS NumberOfEmp
FROM employee;

SELECT COUNT(super_id) AS NumberOfEmp
FROM employee;

-- Find the average of all employee's salaries
SELECT AVG(salary) AS AverageSalary
FROM employee;

-- Find the sum of all employee's salaries
SELECT SUM(salary) AS TotalOFSalary
FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex AS MaleFemale
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT * FROM works_with;

SELECT SUM(total_sales),  emp_id
FROM works_with
GROUP BY  emp_id;

-- Find the total amount of money spent by each client
SELECT SUM(total_sales) AS AmountSpent, client_id AS BYClient
FROM works_with
GROUP BY client_id;

--------WILDCARDS--------------------------------------------------------------------
-- Find any client's who are an LLC

SELECT *
FROM client
WHERE client_name LIKE '%LLC%';

-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%label%';

-- Find any employee born on the 10th day of the month.
SELECT * 
FROM employee
WHERE birth_day LIKE '_____10%';