show databases;

use Kainoos_OrlaithM;

create table AsignedEmployees (
AsignedEmployeeID int,
ProjectID int,
EmployeeID int
);

alter table AsignedEmployees
add primary key(AsignedEmployeeID);

alter table AsignedEmployees
modify AsignedEmployeeID int auto_increment;

alter table AsignedEmployees
add constraint fk_AsignedEmplyees_projectid
foreign key(ProjectID)
references Project(ProjectID);

alter table AsignedEmployees
add constraint fk_AsignedEmplyees_employeeid
foreign key(EmployeeID)
references Employee(EmployeeID);



