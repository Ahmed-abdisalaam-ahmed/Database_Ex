-- Exersice #5

select * from students;
select * from courses;
select * from enrollements;

-- find unrolled
select students.name, students.email, courses.title from enrollements
join students on student_id = students.id 
join courses on course_id = courses.id

-- find the students that take courses
select name,title from students
left join enrollements on student_id = students.id 
left join courses on course_id = courses.id 

-- count how many students that take courses using roub by
select name, COUNT(course_id) Total from students
left join enrollements on student_id = students.id 
group by students.id
