
create table students (
	 id int primary key auto_increment,
	 name varchar(100),
	 email varchar(100)
)
select * from students

insert into students (name, email)
with recursive seq as (
	select 1 as n
	union all
	select n + 1 
	from seq where n < 10000
)
select
	CONCAT('student ', n),
	CONCAT('student', n, '@gmail.com')
from seq;

explain select * from students where email like ('student1%')

show index from students

create index idx_email on students(email)

drop index idx_email on students

SELECT * FROM students LIMIT 10;
SELECT COUNT(*) FROM students;
