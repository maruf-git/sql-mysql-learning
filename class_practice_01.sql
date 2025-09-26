create database if not exists university;

show databases;
use university;

-- student table schema
create table student(
    studentID int primary key,
    name VARCHAR(50),
    age int not null,
    dept varchar(50)
);

-- insert into tableName values(sequentially column data)
insert into student values(1,"maruf",25,"CSE");
insert into student values(2,"rifat",26,"EEE")
select * from student;

-- teacher table schema
create table teacher(
    teacherID int primary key,
    name varchar(50),
    age int not null,
    dept varchar(50)
);

-- inserting teachers data into teacher table
insert into teacher values(1,"Mamun",40,"CSE");
insert into teacher values(2,"Pankaj",28,"CSE");

-- show teacher table
select * from teacher

-- show all the tables of university database
show tables;

-- inserting multiple data into table at a time

insert into student values
(3,"shifat",30,"CSE"),
(4,"tausif",25,"ECE");

select * from student;