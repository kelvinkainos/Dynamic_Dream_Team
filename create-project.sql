USE Kainoos_OrlaithM;

SELECT * FROM Project;

CREATE TABLE Project (
ProjectID int PRIMARY KEY auto_increment,
Name varchar(60),
Value DECIMAL (2),
Completed tinyint);