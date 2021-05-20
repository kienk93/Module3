use quanlysinhvien;
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
