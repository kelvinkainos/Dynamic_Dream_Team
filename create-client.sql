USE Kainoos_OrlaithM;

SELECT * FROM `Client`;

CREATE TABLE `Client` (
ClientID int PRIMARY KEY auto_increment,
Name varchar(50),
Address varchar(200),
PhoneNumber varchar(25));

ALTER TABLE `Client` 
ADD AsignedEmployeeID int;

ALTER TABLE `Client` 
ADD CONSTRAINT fk_client_asignedemployee_id 
FOREIGN KEY (AsignedEmployeeID) 
REFERENCES AsignedEmployees(AsignedEmployeeID);