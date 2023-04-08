create database Course

use Course

create table Users(
[Id] int,
[Name] nvarchar(50),
[Surname] nvarchar(50),
[Age] int,
[Email] nvarchar(60),
[IsDeleted] bit default 0
);



create table Educations(
[Id] int,
[Name] nvarchar(50)
);


create table Teachers(
[Id] int,
[FullName] nvarchar(50),
[Age] int,
[Address] nvarchar(70),
[Email] nvarchar(60),
[IsDeleted] bit default 0
);



insert into Users([Id],[Name],[Surname],[Age],[Email],[IsDeleted])
values(1,'Novrasta','Aslanzade',25,'novrasta@gmail.com',0),
(2,'Gultac','Jafarova',19,'gultac@gmail.com',0),
(3,'Fatima','Bayramova',20,'fatima@gmail.com',0),
(4,'Mahammad','Magomedov',15,'mahammad@gmail.com',1),
(5,'Rasul','Hesenova',15,'rasul@gmail.com',0),
(6,'Nijat','Novruzzade',21,'nijat@gmail.com',0)


--First
select * from Users

--Second
select *from Users where [Age]<20

--Third
select count(*) as 'Users count' from Users


insert into Teachers([Id],[FullName],[Age],[Email],[Address],[IsDeleted])
values(1,'Javid Bashirov',29,'javid@gmail.com','Ahmedli',0),
(2,'Fatima Bayramova',20,'fatima@gmail.com','Ahmedli',0),
(3,'Fuad Hesenov',35,'fuad@gmail.com','Nizami',1),
(4,'Orkhan Huseynov',33,'orkhan@gmail.com','Nizami',1)

select * from Teachers


--Fourth
select [FullName],[Age],[Address] from Teachers where [IsDeleted]='true' 



--Fifth
select count(*) as 'Teachers count' from Teachers where [Age]>30


insert into Educations([Id],[Name])
values(1,'FullStack'),
(2,'UX/UI design'),
(3,'Graphic and Web Design')

select * from Educations