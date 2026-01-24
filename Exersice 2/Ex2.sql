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

-- Exersice 2
# 1
select * from users
where email like '%@gmail.com' and id > 2
# 2
select * from users 
where name like 'Ayaan%' or name like'max%'
#3
SELECT * FROM users
WHERE (name = 'Ayaan Mohamed' OR name = 'Max Jones') AND id < 3;
#4
select * from users
where email like '%@gmail.com' and (name = 'Ayaan Mohamed' or name = 'Nasteexo Abdi')
#5 Delete
delete from users
where email like '%@gmail.com' and (name = 'Ayaan Mohamed' or name = 'Nasteexo Abdi')
#6 Update
update users set email = "Shihabudiin@gmail.com"
where email like '%@gmail' and (id = 4 or id = 6)







