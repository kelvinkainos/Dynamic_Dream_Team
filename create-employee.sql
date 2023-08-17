USE Kainoos_OrlaithM;

SELECT * FROM Employee;

CREATE TABLE Employee (
EmployeeID int PRIMARY KEY auto_increment,
Name varchar(20),
Salary DECIMAL (2),
BankAccountNumber varchar(8),
NationalInsuranceNumber varchar(9));

ALTER TABLE Employee 
ADD Employee_RoleID int;

ALTER TABLE Employee 
ADD CONSTRAINT fk_employee_employeerole_id 
FOREIGN KEY (Employee_RoleID) 
REFERENCES Employee_Role(Employee_RoleID);
