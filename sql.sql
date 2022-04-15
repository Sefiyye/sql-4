CREATE DATABASE Cedvel

USE Cedvel

CREATE TABLE İşçi(
[Soyad] nvarchar(30),
[Ad] nvarchar(20),
[Ata adi] nvarchar(20),
[VezifeID] int,
[Maas] int
)

insert into İşçi
values('Ferecova', 'Sefiyye', 'Yalcin', 1,900)

CREATE TABLE Vezife(
[Ad] nvarchar(20)
)

insert into Vezife
values('Mudur')

CREATE TABLE Filial(
[Ad] nvarchar(20)
)

insert into Filial
values('Nerimanov filiali')

CREATE TABLE Mehsul(
[Ad] nvarchar(25),
[Alis qiymeti] int,
[Satis qiymeti] int
)

insert into Mehsul
values ('Çörək', 40, 50)

CREATE TABLE Satis(
[MehsulId] int,
[IsciId] int,
[Satis tarixi] smalldatetime
)