USE Kainoos_OrlaithM;

SELECT * FROM `Client`;

CREATE TABLE `Client` (
ClientID int PRIMARY KEY auto_increment,
Name varchar(50),
Address varchar(200),
PhoneNumber varchar(25));