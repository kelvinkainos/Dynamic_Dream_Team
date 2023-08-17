use Kainoos_OrlaithM;

create table CommisionRate (
CommisionRateID int,
EmployeeID int, 
ComisionRate decimal(2,2) default 0.2,
ProjectID int
);

alter table CommisionRate
add primary key(CommisionRateID);

alter table CommisionRate
modify CommisionRateID int auto_increment;

alter table CommisionRate
add constraint fk_CommisionRate_projectid
foreign key(ProjectID)
references Project(ProjectID);


alter table CommisionRate
add constraint fk_CommisionRate_employeeid
foreign key(EmployeeID)
references Employee(EmployeeID);