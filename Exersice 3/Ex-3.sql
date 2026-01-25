-- Exersice 3 

select * from users;

-- #1
select * from users
order by id desc limit 2

-- #2
select email from users
order by name asc 

-- #3
select name as 'Username',email as 'Email Address' from users
limit 1

-- #4 
select name as 'Username',email as 'Email Address', phone as 'Phone number' from users
order by id desc
limit 5