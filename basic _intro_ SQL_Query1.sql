use mobile12
-- table creation
create table brand(
brand_id int primary key,
brand_name varchar (35),
brand_cost int,
brand_revenue int,
brand_ratting int);

select * from brand;

insert into brand values(101,'apple',100000,1000000,5)
insert into brand values(102,'mi',50000,500000,4)

-- second way to insert data 

insert into brand (brand_id,brand_name,brand_cost,brand_revenue,brand_ratting)values
(103,'samsung',400000,4000000,6),
(104,'xeomi',30000,300000,5),
(105,'tab',44000,500000,7);

-- alter command -- to alter the dataset table( column name change , table rename ,column)
-- alter command is also the DML COMMAND 

alter table brand add brand_success varchar(10);
select * from brand ;
-- whenever we insert data into the table by adding a new column we always point the refrence and primary key and we use where clause and update command 
update brand set brand_success='yes' where brand_id=101;
update brand set brand_success='yes' where brand_id=102;
update brand set brand_success='no' where brand_id=103;
update brand set brand_success='average' where brand_id=104;
update brand set brand_success='yes' where brand_id=105;

-- in sql you cant use the A - a , it is a case senstive language
-- once u create a table or insert data if it has a primary key you cant run it again 
-- update command is used for upadating the table data so in this case if we runing again not a issue

--renaming table name 
exec sp_rename 'brand','brands';

--changing a data type
alter table brands alter column brand_success varchar(30);

select * from brands;

--delete a row

--where clause
--where clause is used for filltaring data

delete from brands where brand_id=105;

select * from brands;