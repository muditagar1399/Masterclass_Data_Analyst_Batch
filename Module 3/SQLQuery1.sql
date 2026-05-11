use employees
create table employee(
emp_id int primary key ,
emp_name char(20) NOT NULL,
emp_salary int ,
emp_designation char(20),
emp_department char(20));

select * from employee; -- * is used to select all data 
insert into employee values (101,'vishal',400000,'Manager','IT');
insert into employee values (102,'mudit',200000,'employee','IT');

-- second method 
INSERT INTO employee (emp_id, emp_name, emp_salary,emp_designation,emp_department) VALUES
(103,'mudit',500000,'Mnaager','Fianace'),
(104,'nilesh',700000,'Head of IT','it'),
(105,'akilesh',600000,'employee','IT');