create database Schools;
use Schools;

create table Students (
StudentID int primary key,
FirstName varchar(100) not null,
LastName varchar(100),
Age int constraint age_check check (age >='18'),
Email varchar(255) unique not null
);

insert into Students (StudentID,FirstName,LastName,Age,Email)
values (1,'John','Doe',20,'john.doe@example.com'),
(2,'Jane','Smith',22,'jane.smith@example.com'),
(3,'Michael','Brown',19,'michael.brown@example.com');

alter table Students add EnrollmentDate date;

select * from Students;

alter table Students modify Email varchar(300);

alter table Students drop column LastName;










