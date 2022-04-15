create database Shop
use Shop

create table Categories(
Id int primary key identity,
[Name] nvarchar(30)
)

create table Brands(
Id int primary key identity,
BrandName nvarchar(50),
Categories_Id int constraint BB_Brands_Categories foreign key references Categories(Id)
)

create table Markas(
Id int primary key identity,
[Name] nvarchar (30),
Brands_Id int constraint MB_Markas_Brands foreign key references Brands(Id)
)

create table Products(
Id int primary key identity,
[Name] nvarchar (30),
Price decimal(5,2),
Image nvarchar(30),
Color nvarchar(20),
Volume int,
Count int,
Markas_Id int constraint PM_Products_Markas foreign key references Markas(Id)
)

insert into Categories
values('Brendler'),
('Qadin etirleri'),
('Kisi etirleri'), 
('Yeni'),
('Ekskluziv etirler'),
('Hediyye kartlari')

insert into Brands
values('BVLGARI',1),
('Xerjoff',2),
('Parfums De Marly',4),
('Tiziana Terenzi',3)

insert into Markas
values('Aubade',2),
('Aramis',4), 
('Avon',3),
('Ajmal',1),
('Creed',4)

insert into Products
values('Aubade',133,'Image1', 'narinci', 30, 5,2),
('Avon', 98,'image2', 'ag', 30, 4,1),
('Avon', 131,'image3','cehrayi',75,4,3)

select sum(Price) as Total from Products