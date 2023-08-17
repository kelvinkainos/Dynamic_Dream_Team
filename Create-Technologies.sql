show databases;

use Kainoos_OrlaithM;

create table Technologies (
TechnologiesID int,
Type varchar(60)
);



alter table Technologies
add primary key(TechnologiesID);

alter table Technologies modify TechnologiesID int auto_increment;



show tables;