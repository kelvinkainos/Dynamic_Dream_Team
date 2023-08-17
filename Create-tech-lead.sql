use Kainoos_OrlaithM;

create table TechLead (
TechLeadID int,
EmployeeID int,
ProjectID int
);

alter table TechLead
add primary key(TechLeadID);

alter table TechLead
modify TechLeadID int auto_increment;

alter table TechLead
add constraint fk_TechLead_projectid
foreign key(ProjectID)
references Project(ProjectID);

alter table TechLead
add constraint fk_TechLead_employeeid
foreign key(EmployeeID)
references Employee(EmployeeID);