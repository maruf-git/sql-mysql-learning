show databases;

-- creating college database 
create database if not exists college;
use college;

-- create student table
create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
); 

-- insert into student table
insert into student
(rollno,name,marks,grade,city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"), 
(105, "emanuel", 12, "F", "Delhi"), 
(106, "farah", 82, "B", "Delhi");

-- use of select
select * from student;
select rollno,marks from student;
select distinct city from student;

-- use of where clause with select
select rollno,name,marks from student
where marks>=80; 

-- use of order clause
select * from student
where marks>=80 
order by marks DESC; 

-- use of limit clause
select * from student
where marks>=80
limit 2; 

-- use of select->where->order->limit clause together
select * from student
where marks>=80
order by rollno
limit 3; 

-- aggregate function
-- returns single values
-- max()
-- min()
-- count()
-- avg()  
-- sum()

select max(marks)
from student;

select min(marks)
from student;

select avg(marks)
from student;

select sum(marks)
from student;

select count(city)
from student;

select count(marks)
from student;


-- group by clause
-- normally group by clause is used with aggregate function

-- normal select
select city
from student;

-- select with group by
select city
from student
group by city;

-- select with group by and aggregate function
 select city,count(rollno)
 from student
 group by city;
 
 select city, name, count(rollno)
 from student
 group by city,name;
 
 -- all clause with having clause
 select city, avg(marks) as avg_marks
 from student
 where marks >= 50
 group by city
 having avg(marks) >=80
 order by city asc
 limit 2;
 