CREATE DATABASE HRManager

USE HRManager

CREATE TABLE Departments
(
	Id int Primary key Identity,
	Name nvarchar(50) NOT NULL CHECK(LEN(Name) > 2)
)

CREATE TABLE Employees
(
	Id int Primary key Identity,
	Fullname nvarchar(50) NOT NULL CHECK(LEN(Fullname) > 3),
	Salary money CHECK(Salary > 0),
	DepartmentId int references Departments(Id)
)