USE Kainoos_OrlaithM;

SELECT * FROM Project;

CREATE TABLE Project (
ProjectID int PRIMARY KEY auto_increment,
Name varchar(60),
Value DECIMAL (2),
Completed tinyint);

ALTER TABLE Project 
ADD TechnologiesID int,
ADD TechLeadID int,
ADD ClientID int;
;

ALTER TABLE Project 
ADD CONSTRAINT fk_project_technologies_id 
FOREIGN KEY (TechnologiesID) 
REFERENCES Technologies(TechnologiesID);

ALTER TABLE Project 
ADD CONSTRAINT fk_project_techlead_id 
FOREIGN KEY (TechLeadID) 
REFERENCES TechLead(TechLeadID);

ALTER TABLE Project 
ADD CONSTRAINT fk_project_client_id 
FOREIGN KEY (ClientID) 
REFERENCES Client(ClientID);