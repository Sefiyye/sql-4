CREATE DATABASE Cinema

use Cinema

create table Janr(
Id int primary key identity,
[Name] nvarchar(30)
)

create table Film(
Id int primary key identity,
[Name] nvarchar(50),
[Aktyor] nvarchar( 30)
)

create table Seans(
Id int primary key identity,
[Name] nvarchar(30)
)

create table Zal(
Id int primary key identity,
Number int,
Bilet_Id int foreign key references Bilet(Id)
)

create table Aktor(
Id int primary key identity, 
[Name]nvarchar(40),
)

create table Bilet(
Id int primary key identity,
Price int
Mushteri_Id int constraint MB_MusteriBilet foreign key references Musteri(Id)
)

create table Musteri(
Id int primary key identity,
[Name] nvarchar(40)
)


create table AktyorFilm(
Id int primary key identity,
Aktyor_Id int foreign key references Aktor(Id),
Film_Id int foreign key references Film(Id)
)

create table JanrFilm(
Id int primary key identity,
Janr_Id int foreign key references Janr(Id),
Film_Id int foreign key references Film(Id)
)

create table FilmSeans(
Id int primary key identity,
Film_Id int foreign key references Film(Id),
Seans_Id int foreign key references Seans(Id)
)

create table BiletFilm(
Id int primary key identity,
Film_Id int foreign key references Film(Id),
Bilet_Id int foreign key references Bilet(Id)
)




