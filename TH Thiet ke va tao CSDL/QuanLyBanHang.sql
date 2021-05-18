create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
	cID int not null primary key auto_increment,
    cName varchar(30) not null,
    cAge int not null 
    );
create table Orderr(
oID int not null primary key auto_increment,
cID int not null,
oDate date,
oTotalPrice double,
foreign key (cID) references Customer(cID)
);
create table Product(
pID int primary key auto_increment,
pName varchar(30),
pPrice double
);
create table OrderrDetail(
oID int,
pID int,
foreign key(oID) references Orderr(oID),
foreign key(pID) references Product(pID),
constraint primary key(oID, pID) ,
odQTY varchar(20)
);
