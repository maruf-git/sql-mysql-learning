show databases;
drop database if exists university;

create database university;
use university;

-- dept table
create table if not exists dept (
	id int primary key,
    name varchar(50) not null
);

-- insert into dept table
insert into dept(id,name)
values
(101, "cse"),
(102, "eee"),
(103, "math"),
(104, "english"),
(105, "bangla"); 
select * from dept;


-- create teacher table with relation to dept (using foreign key)
--  with cascade update and delete 
drop table if exists teacher;
create table if not exists teacher(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key(dept_id) 
		references dept(id)
		on update cascade
        on delete cascade
);

-- insert into teacher table
insert into teacher(id,name,dept_id)
values
(1,"rifat",102),
(2,"shifat",103),
(3,"maruf",101),
(4,"tausif",101),
(5,"munna",102); 

select * from teacher;

-- update in in table
select * from dept;

update dept
set id = 100
where id = 101;

select * from dept;  -- updated table
select * from teacher; -- cascades on update

-- delete in the table 
delete from dept
where id = 100;

select * from dept;  -- deleted row with id=100
select * from teacher; -- cacade delete -> deleted rows with dept_id=100


-- alter table(used to change the schema)
select * from dept;

-- add a new column to the dept table 
alter table dept
add column age int not null;
select * from dept;

-- delete dept column from the table 
alter table dept
drop column age;


-- add age column to the dept table
alter table dept
add column age int not null default 25; 
select * from dept;

-- change age column of the dept table
alter table dept
rename column age to stud_age; -- column age is renamed to stud_age
select * from dept;

-- modify data typpe and constraints
alter table dept
modify column stud_age varchar(3) not null default "30"; 
select * from dept;

insert into dept(id,name) values(101,"cse");
select * from dept;
 
-- drop column stud_age
alter table dept
drop column stud_age;
select * from dept;