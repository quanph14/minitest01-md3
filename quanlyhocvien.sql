use quanlyhocvien;
select * from students where fullname like '%Nguyen';
select * from students where fullname like '%Anh';
select * from students where age between 15 and 18;
select * from students where id in (9,11);

select count(id) from students;
select count(students.id),address from students inner join address on students.address_id = address.id and address.id = 1;
select count(students.id),address from students inner join address on students.address_id = address.id and address.id = 2;
select count(students.id),address from students inner join address on students.address_id = address.id and address.id = 3;
select count(students.id),address from students inner join address on students.address_id = address.id and address.id = 4;
select count(students.id),address from students inner join address on students.address_id = address.id and address.id = 5;
select avg(point),name from point inner join course on course.id = point.course_id and course.id = 2;
select avg(point),name from point inner join course on course.id = point.course_id and course.id = 1;
select C.id, C.name, avg(point)
from course C join point P on c.id = P.course_id
group by c.id, c.name
having avg(point) >= all (select avg(point) from point group by point.course_id);