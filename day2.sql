-- CREATE DATABASE
create database dayTwo;

-- TO USE PERTICULER DATABASE
use  dayTwo;

-- SHOW THE DATABASE
show databases;

CREATE TABLE Student(
Id INTEGER, 
LastName TEXT NOT NULL,
 FirstName TEXT NOT NULL,
 City VARCHAR(35));
 desc Student;
INSERT INTO Student VALUES(1, 'Hanks', 'Peter', 'New York');  
INSERT INTO Student VALUES(2, NULL, 'Amanda', 'Florida');   
select * from Student;

CREATE TABLE ShirtBrands(
Id INTEGER,
 BrandName VARCHAR(40) UNIQUE, 
 Size VARCHAR(30)); 
 desc ShirtBrands; 
 INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, 'Pantaloons', 38), (2, 'Cantabil', 40);  
 -- (UNIQUE Constraint)This constraint ensures that all values inserted into the column will be unique. It means a column cannot stores duplicate values.
 INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, 'Raymond', 38), (2, 'Cantabil', 40);  
 select * from ShirtBrands;
 
--  CHECK Constraint
 CREATE TABLE Persons (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int CHECK (Age>=18)  
);   
INSERT INTO Persons(Id, Name, Age)   
VALUES (1,'Robert', 28), (2, 'Joseph', 35), (3, 'Peter', 40);  
 INSERT INTO Persons(Id, Name, Age) VALUES (1,'Robert', 15);  
 select * from Persons;
 
--  DEFAULT Constraint--
-- In the below output, we can see that the first insert query that contains all fields executes successfully, while the second insert statement does not contain the "City" column but also executed successfully. It is because it has a default value. 
 CREATE TABLE Persons1 (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int,  
    City varchar(25) DEFAULT 'New York'  
);  
 INSERT INTO Persons1(Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida'),   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');  
INSERT INTO Persons1(Id, Name, Age) VALUES (1,'Brayan', 15);  
select * from Persons1;

-- PRIMARY KEY Constraint
-- A table may have duplicate columns, but it can contain only one primary key. It always contains unique value into a column.
CREATE TABLE Persons2 (  
    ID int NOT NULL PRIMARY KEY,   
    Name varchar(45) NOT NULL,   
    Age int,   
    City varchar(25));  
INSERT INTO Persons2(Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida') ,   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');  
  select * from Persons2;
  
INSERT INTO Persons2(Id, Name, Age, City)   
VALUES (1,'Stephen', 15, 'Florida');  

-- AUTO_INCREMENT Constraint
CREATE TABLE Animals(  
id int NOT NULL AUTO_INCREMENT,   
name CHAR(30) NOT NULL,   
PRIMARY KEY (id));  
INSERT INTO Animals (name) VALUES   
('Tiger'),('Dog'),('Penguin'),   
('Camel'),('Cat'),('Ostrich');  
select * from Animals;

-- ENUM Constraint
-- The ENUM data type in MySQL is a string object. It allows us to limit the value chosen from a list of permitted values in the column specification at the time of table creation. It is short for enumeration, which means that each column may have one of the specified possible values. It uses numeric indexes (1, 2, 3…) to represent string values.
CREATE TABLE Shirts (    
    id INT PRIMARY KEY AUTO_INCREMENT,     
    name VARCHAR(35),     
    size ENUM('small', 'medium', 'large', 'x-large')    
);  
 INSERT INTO Shirts(id, name, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large');  
SELECT * FROM Shirts;  
CREATE INDEX idx_name ON Shirts(name);  
SELECT * FROM Shirts USE INDEX(idx_name);  

-- Foreign Key Constraint
CREATE TABLE Persons2 (  
    ID int NOT NULL PRIMARY KEY,   
    Name varchar(45) NOT NULL,   
    Age int,   
    City varchar(25));  
INSERT INTO Persons2(Id, Name, Age, City)   
VALUES (1,'Robert', 15, 'Florida') ,   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');  
  select * from Persons2;
  
CREATE TABLE Orders (  
    Order_ID int NOT NULL PRIMARY KEY,  
    Order_Num int NOT NULL,  
    Person_ID int,  
    FOREIGN KEY (Person_ID) REFERENCES Persons3(Person_ID)  
);  
select * from Persons3
