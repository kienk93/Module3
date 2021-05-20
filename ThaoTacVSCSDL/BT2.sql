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
insert into Customer(cName,cAge)
value('Minh Quan', '10'),
('Ngoc Oanh', '20'),
('Hong Ha', '50');


INSERT INTO Orderr(oID,cID,oDate,oTotalPrice) value (1,3, '2006/3/21', NULL),
    (2,2, '2006/3/23', NULL),
    (3,1, '2006/3/16', NULL);
INSERT INTO Orderrdetail value (1, 1, 3),
    (1, 3, 7),
    (1, 4, 2),
    (2, 1, 1),
    (3, 1, 8),
    (2, 5, 4),
    (2, 3, 3);
    
select oID,oDate,oTotalPrice
from Orderr;

SELECT c.cID,o.oDate,c.cName,p.pName
from Customer c join Orderr o on c.cID=o.cID join Orderrdetail o2 on o.oID=o2.oID join Product p on o2.oID = p.pID;

SELECT customer.cName
FROM customer
LEFT JOIN orderr ON orderr.cID = customer.cID
WHERE orderr.cID IS NULL;

SELECT customer.cName
FROM customer
LEFT JOIN orderr ON orderr.cID = customer.cID
WHERE orderr.cID IS NULL;

SELECT orderr.oID, orderr.oDate, SUM(orderrdetail.odQTY * product.pPrice)
FROM orderrdetail
JOIN orderr ON orderrdetail.oID = orderr.oID
JOIN product ON orderrdetail.pID = product.pID
GROUP BY orderr.oID;

