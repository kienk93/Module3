create database QuanLySinhVien;
use QuanLySinhVien;
create table Class(
	ClassID int not null auto_increment primary key,
	ClassName varchar(60) not null,
	StartDate datetime not null,
	Status bit
);
create table Student(
	StudentID int not null auto_increment primary key,
	StudentName varchar(30) not null,
	Address varchar(50),
	Phone varchar(20),
	Status bit,
	ClassID int not null,
	foreign key(ClassID) references Class(ClassID)
);
create table Subject(
	SubID int not null auto_increment primary key,
	SubName varchar(30) not null,
	Credit tinyint not null default 1 check ( Credit >= 1),
	Status bit default 1
);
create table Mark(
	MarkID int not null auto_increment primary key,
    SubID int not null,
    StudentID int not null,
    Mark float default 0 check (Mark between 0 and 100),
    ExamTimes tinyint default 1,
    unique(SubID, StudentID),
    foreign key (SubID) references Subject (SubID),
    foreign key (StudentID) references Student(StudentID)
);
insert into Class
value (1, "A1", "2008-12-22", 1);
insert into Class
value (2, 'A2', '2008-12-20', 1);
insert into Class
value (3, 'B3', current_date(), 0);
insert into Student (StudentName, Address, Phone, Status, ClassID)
value ('hung', 'ha noi', '0123456789', 1, 1);
insert into Student (StudentName, Address, Status, ClassID)
value ('hoa', 'hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
INSERT INTO Student (StudentName, Phone, Address, Status, ClassId)
VALUES ('Manh', '0123456789', 'da nang', 0, 2);
insert into Subject
value (1, 'cf', 5, 1),
(2, 'c',6,1),
(3,'dtk',5,1),
(4,'asd',10,1);
insert into Mark(SubID,StudentID,Mark,ExamTimes)
value(1,1,8,1),
(1,2,10,2),
(1,3,7,2);

select * 
from Student
where Status = true;
select *
from Student
where Credit < 10;
select S.StudentID,S.StudentName,C.ClassName
from Student S join Class C on S.ClassID = C.ClassID;

select S.StudentID,S.StudentName,C.ClassName
from Student S join Class C on S.ClassID = C.ClassID
where C.ClassName = 'A1';

select S.StudentID,S.StudentName,Sub.SubName,M.Mark
from Student S join Mark M on S.StudentID = M.StudentID join Subject Sub on M.SubID = Sub.SubID;

SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';

select *
from Student 
where S.StudentName like 'h%';

select * 
from Class
where month(StartDate) = '12';

select *
from Subject
where Credit between 5 and 7;

update Student
set ClassID = 2
where StudentName = 'hung';

select S.StudentName, S2.SubName, M.Mark
from Student S
join Mark M on S.StudentID = M.StudentID join Subject S2 on S2.SubID = M.SubID
order by Mark desc, StudentName asc;
