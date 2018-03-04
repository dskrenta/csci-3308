select * from store order by sname asc;

select * from store order by sname asc limit 3;

select * from (select * from store order by id desc limit 3) sub order by sname asc;

select * from store where price > 1;

select id, sname, qty, price, qty * price as "extended price" from store;

select sum(price) as "price total" from store;

select count(id) as "item count" from store;

select * from course where department_id = 1;

select sum(count) as "total enrollment" from enrollment;

select count(id) as "total classes" from course;

select count(id) as "total departments" from department;

select group_concat(department.name, course.cname separator ' ') as "courses" from course join department on department_id = department.id;

select group_concat(department.name, " ", course.cname separator ' ') as "courses" from course join department on department_id = department.id;

select course.cname, department.name, enrollment.count from course join department on department_id = department.id join enrollment on course.id = enrollment.id;