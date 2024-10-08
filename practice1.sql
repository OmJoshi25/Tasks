create database practice1;
use practice1;

create table salesman(salesman_id int primary key,name varchar(50) not null,city varchar(50),comission double);

insert into salesman values(5001,'James Hoog','New York',0.15);
insert into salesman values(5002,'Nail Knite','Paris',0.13);
insert into salesman values(5005,'Pit Alex','London',0.11);
insert into salesman values(5006,'Mc Lyon','Paris',0.14);
insert into salesman values(5007,'Paul Adam','Rome',0.13);
insert into salesman values(5003,'Lausen Hen','San Jose',0.12);
insert into salesman values(5008,'Rose Willy',NULL,0.17);
update salesman set comission=NULL where salesman_id=5009;
update salesman set city='' where salesman_id=5008;
insert into salesman values(5009,'Lausen Hen','Itly',0.17);

select * from salesman;

select name,comission from salesman;

select name,city from salesman where city='Paris';

select name,comission from salesman where city='San Jose';

select name,salesman_id,city from salesman;

select name,salesman_id,comission from salesman;


select * from salesman order by name asc;

select * from salesman order by salesman_id asc;

select * from salesman order by salesman_id desc;

select * from salesman where city in('Paris','San Jose') order by salesman_id desc;

select * from salesman where city in('Paris','San Jose') order by salesman_id asc;

select * from salesman where city in('Paris','San Jose') order by name desc;

select * from salesman where city in('Rome','London') order by salesman_id asc;

select * from salesman where city in('New York','London') order by city asc;

select * from salesman where name in('James Hoog','Paul Adam') order by comission asc;

select name,comission,city from salesman where comission=0.13;

select name,comission from salesman having comission>0.12;

select * from salesman where comission>0.12;

select name from salesman where city='';

select * from salesman where comission=null;