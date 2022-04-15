create database Tapaz

use Tapaz

create table Settings(
Id int primary key identity,
Logo nvarchar (150),
Location nvarchar(150),
Email nvarchar (100)  constraint UQ_Email Unique,
Phone nvarchar (100),
Phone2 nvarchar (100),
IgUrl nvarchar (100),
FbUrl nvarchar (100)
)

create table Advertisiments(
Id int primary key identity,
Image nvarchar(100),
Url nvarchar (100)
)

create table Categories(
Id int primary key identity,
[Name] nvarchar(30)
)

create table SubCategories(
Id int primary key identity,
[Name] nvarchar(50),
Category_Id int constraint SC_Categories_SubCategories foreign key references Categories(Id)
)

create table GasTypes(
Id int primary key identity,
[Name] nvarchar(30)
)

create table Color(
Id int primary key identity,
[Name] nvarchar(30)
)

create table Brand(
Id int primary key identity,
[Name] nvarchar(50),
SubCategories_Id  int constraint SB_SubCategories_Brand foreign key references SubCategories(Id)
)

create table Cities(
Id int primary key identity,
[Name] nvarchar (50)
)
create table Models(
Id int primary key identity,
[Name] nvarchar(50),
Engine smallint,
Release smalldatetime,
Km int,
Brand_Id int constraint BM_Brand_Models foreign key references Brand(Id),
Color_Id int constraint CM_Color_Models foreign key references Color(Id),
GasTypes_Id int constraint GM_GasTypes_Models foreign key references GasTypes(Id)
)


create table Announcement(
Id int primary key identity,
Price decimal (7,2),
Article nvarchar(500),
Cities_Id int constraint CA_City_Announcement foreign key references Cities(Id),
SubCategories int constraint SA_SubCategories_Announcemenet foreign key references SubCategories(Id),
Brand_Id int constraint BA_Brand_Announcement foreign key references Brand(Id),
Models_Id int constraint MA_Model_Announcement foreign key references Models(Id),
GasTypes_Id int constraint GA_GasTypes_Announcemeent foreign key references GasTypes(Id),
Color_Id int constraint CA_Color_Announcement foreign key references Color(Id)
)


create table Images(
Id int primary key identity,
[Name] nvarchar(100),
Announcement_Id int constraint AI_Announcement_Images foreign key references Announcement(Id)
)

