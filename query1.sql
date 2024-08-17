create table organization (
	emp_id serial primary key,
	emp_name varchar(120),
	dept_id int,
	dept_name varchar(130),
	manager_id int,
	manager_name varchar(120),
	job_title varchar(60),
	salary int,
	location varchar(150)
)
 select * from organization

insert into organization(emp_name,dept_id,dept_name,manager_id,manager_name,job_title,salary,location)values('Alice Smith',101,'IT',201,'Jane Doe','DEVELOPER',50000,'New york')
copy organization from 'E:\Data Analytics\da9\SQL\tasks\sql 10\data 1.csv'  DELIMITER ',' csv header
select distinct * from organization

--2nf
 select * from organization
	
create table employee as
select emp_id,emp_name,dept_id,manager_id,job_title,salary,location from organization
select * from employee
	
create table department as
select dept_id,dept_name,location from organization
select * from department
	
create table manager as
select manager_id,manager_name from organization
select * from manager

--3nf
select e.emp_id,e.emp_name,e.dept_id,e.manager_id,e.job_title,e.salary,e.location from employee as e
inner join department as d
on e.dept_id=d.dept_id
inner join manager as m
on e.manager_id=m.manager_id
	
	