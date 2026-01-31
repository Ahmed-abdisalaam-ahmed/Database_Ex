
create table users (
	 id int primary key auto_increment,
	 name varchar(100),
	 email varchar(100)
)
select * from users

insert into users (name, email) with recursive seq as (
	select 1 as n,
	union all 
	SELECT n + 1 FROM seq WHERE n < 10000
)
INSERT INTO users (username, email, created_at) WITH RECURSIVE seq AS (
    SELECT 1 AS n
    UNION ALL
    
)
SELECT CONCAT('user_', n) AS username,
    CONCAT('user_', n, '@example.com') AS email,
    NOW() - INTERVAL (FLOOR(RAND() * 365)) DAY AS created_at
FROM seq;
