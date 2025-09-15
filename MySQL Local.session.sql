show databases;
create database if not exists work;
create database if not exists hello;
use hello;
create table student(rollno int primary key, name varchar(50));
select * from student;
insert into student (rollno, name)
values
(1, "maruf"),
(2, "rifat"),
(3, "shifat");

select * from student

