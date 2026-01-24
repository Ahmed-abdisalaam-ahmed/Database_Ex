show databases;

use shihaabi;

create table users(
	id int primary key auto_increment,
	name varchar(100) not null,
	email varchar(255) unique ,
	phone varchar(20)
);

select * from users

insert into users (name, email, phone)
VALUES
('Ayaan Mohamed', 'ayaan@gmail.com',5550123),
('Khalid Said', 'khalid@yahoo.com',5550123),
('Nasteexo Abdi', 'nasteexo@gmail.com',5550199),
('Sagal Osman', 'sagal@live.com',4960000),
('Max Jones', 'max@dugsiiye.com',4971070),
('Layla Ahmed', 'layla123@gmail.com',6862200),
('Mohamed Ibrahim', 'moha@backend.com',6969770),
('Zahra Hassan', 'zahra@outlook.com',9960000);

-- Exersice 1 

-- # 1
select * from users where name like '%d'
-- # 2
select email from users;
-- #3
select * from users 
where email like  '%o%'
--  #4 
select * from users
where name like '____%'
--  #5
select phone from users




