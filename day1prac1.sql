-- CREATE DATABASE
create database shrimaj;

-- TO USE PERTICULER DATABASE
use  shrimaj;

-- SHOW THE DATABASE
show databases;

-- CREATE TABLE
create table shritable
(Name varchar(40),
Address varchar(40),
City varchar(40),
State varchar(40),
Zip int,
Phone_Number bigint, 
Email varchar(40));

-- DESCRIBE TABLE
desc shritable;

-- DROP THE DATABASE(DELETE DATABASE)
  DROP DATABASE new_schema;

-- INSERT DATA INTO TABLE(ADD DATA)

insert into  shritable(Name,  Address, City, State, Zip, Phone_Number, Email) values("shrimaj",  "samirNagar", "pune", "Maharashtra", 56732, "7447880945", "s@gmail.com"),
("pawan",  "anandNagar", "mumbai", "Maharashtra", 12343, "9075207051", "p@gmail.com"),
("yogita",  "aundhNagar", "surat", "Gujrat", 44567, "7798978782", "y@gmail.com"),
("anil",  "shivajiNagar", "nasik", "Maharashtra", 12343, "7798201662", "a@gmail.com"),
("hitu",  "yogiNagar", "nagpur", "maharashtra", 67892, "9421896848", "l@gmail.com");

-- SELECT THE TABLE
select * from shritable;

-- RENAME THE COLOUM NAME 
alter table shritable RENAME COLUMN Email TO EmailID;
-- ALTER THE TABLE(CHANGE THE SIZE OF DATATYE)
alter table shritable add type varchar(30); 

-- RENAME THE TABLE
RENAME TABLE shritable TO shritable1;

-- DESCRIBE TABLE
desc shritable1;

-- SELECT TABLE
select * from shritable1;

-- CREATE TABLE
create table mytable
(Name varchar(40),
Address varchar(40),
City varchar(40),
State varchar(40),
Zip int,
Phone_Number bigint, 
Email varchar(40));

-- DESCRIBE THE TABLE
desc mytable;



