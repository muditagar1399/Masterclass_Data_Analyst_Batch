create database class;
use class
-- creating table
create table program(
program_id int primary key ,
prog_name char(30) not null,
program_type char(40),
program_location varchar(60),
program_fees int,
program_insrtuctor_name char(50),
program_headcount int ,
program_instructor_salary int );
-- to see the table 
select * from program;
-- inserting data into table 
insert into program values (100,'dance','classic','Gujrat',40000,'vishal',10,70000);
insert into program(program_id,prog_name,program_type,program_location,program_fees,program_insrtuctor_name,program_headcount,program_instructor_salary) values 
(102,'music','classic','mumbai',45000,'mudit',45,4700000),
(103,'skit','contemproary','jaipur',50000,'rahul',7,70000),
(104,'study','classic','usa',840000,'yogesh',8,78200),
(105,'dance','classic','EMEA',78500,'axel',9,58300);

-- DDL AND DML 
-- DDL - data defination langauage -- to define the data 
-- ddl - select , insert , delete , alter 
-- aggreagte functions 
-- sum , avg , min , max , count (except count you can use all other aggregate functions only on numerical data )
-- sum function 
select sum(program_instructor_salary) as total_salary from program;
-- as is an alias keyword to give a column  name 
select sum(program_instructor_salary)  from program;
select * from program;
-- max
select max(program_instructor_salary) as max_salary  from program;

-- min 
select min(program_instructor_salary) as min_salary from program;

-- count 

select count(program_instructor_salary) as count_salary from program;

-- count on categorical column 

-- min 
select count(program_type) as type_program from program;
-- all columns using count 
select count(*) from program;

-- alter and update 

--- alter command -- altering table , rename column  name , delete column ,adding column or modifying schema in the table 
-- addidng column in program table 
alter table  program add program_group char(50);
select * from program;
-- update command -- data manipultaion command it modifies the data 
update program set program_group='Nikel' where program_id=100; 
-- where is used here to filter the data 
update program set program_group='adobe' where program_id=102; 
update program set program_group='netflix' where program_id=103; 
update program set program_group='jiohotstar' where program_id=104; 
update program set program_group='cineplex' where program_id=105; 

-- using alter command changing column name 
-- we want to change the name program_fees to fees
--alter table program set 'program_fees','fees' int;
EXEC sp_rename 'program.program_fees','fees','COLUMN';-- ssms command to rename column 
select * from program;
-- delete one column 
alter table program drop column program_type;
-- drop command is used to drop the column 
select * from program ;

-- delete 
-- delete a row in a table 
delete from program where program_id=103;
