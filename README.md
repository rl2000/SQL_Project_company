This project was created by **Rupal Lopes** in November 2021.

**What is this project about?**
In this project I created a company database to manage all the company's essential information in one place.
It saves lots of time looking for vital information about the business progress as it can be accessed all in one place.

**FILE: company_data.sql**
In this file, I created a company database consisting of five tables (employee, branch, client,
works_with, branch_supplier) with their respective primary and foreign keys and inserted values into them using SQL create and insert commands.

**Trigger**
I have also added an extra audit table to keep log of any changes occuring into the five tables.
And then created a TRIGGER on employees table. Whenever a new employee is inserted the trigger will be logged into the audit table. 
I have done an example testing to check if the trigger works.

**View**
I have created a view of employee and branch table together by performing an inner join on them. 
This way employee and branch table are seen as one table.

**Stored Procedure**
I have created a stored procedure that displays all the employees firstname and salary when executed.


**FILE: company_querries.sql**
In this file, I have used SQL code to query the company database. Querries include:
Find all employees ordered by salary.
Find all employees ordered by sex then name.
Find the first 5 employees in the table.
Find the first and last names of all employees.
Find out all the different genders.
Find all male employees.
Find all employees at branch 2.
Find all employee's id's and names who were born after 1969.
Find all female employees at branch 2.
Find all employees who are female & born after 1969 or who make over 80000.
Find all employees born between 1970 and 1975.
Find all employees named Jim, Michael, Johnny or David.
Find the number of employees.
Find the average of all employee's salaries.
Find the sum of all employee's salaries.
Find out how many males and females there are.
Find the total sales of each salesman.
Find the total amount of money spent by each client.
Find any client's who are an LLC.
Find any branch suppliers who are in the label business.
Find any employee born on the 10th day of the month.
