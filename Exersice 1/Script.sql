show databases;

use shihaabi;

create table users(
	id int primary key auto_increment,
	name varchar(100) not null,
	email varchar(255) unique ,
	phone varchar(20)
);



SELECT * FROM users
WHERE (email LIKE '%gmail.com' OR email LIKE '%hotmail.com') AND id > 2;





