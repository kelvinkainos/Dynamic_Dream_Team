USE Kainoos_OrlaithM;

SELECT * FROM Employee;

CREATE TABLE Employee (
EmployeeID int PRIMARY KEY auto_increment,
Name varchar(20),
Salary DECIMAL (2),
BankAccountNumber varchar(8),
NationalInsuranceNumber varchar(9));

