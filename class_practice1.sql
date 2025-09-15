create database if not exists university;

show databases;
use university;

-- creating table
create table student(
    studentID int primary key,
    name VARCHAR(50),
    age int not null,
    dept varchar(50)
);

-- insert into tableName values(sequentially column data)
insert into student values(1,"maruf",25,"CSE");
insert into student values(2,"rifat",26,"EEE");

select * from student;