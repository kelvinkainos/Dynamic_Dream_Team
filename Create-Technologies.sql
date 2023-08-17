show databases;

use Kainoos_OrlaithM;

create table Technologies (
id int,
Type varchar(60)
);

alter table Technologies
add primary key(id);

alter table Technologies modify id int auto_increment;



