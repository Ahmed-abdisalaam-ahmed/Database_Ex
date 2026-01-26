-- Ex4
select * from score

-- #1
select COUNT(*) from score;
-- #2 
select MAX(score) 'Top Students' ,MIN(score) 'Low studens' from score;
-- #3 
select SUBSTRING_INDEX(email, '@', -1) as domain, COUNT(*) Total from score
group by domain order by domain;
-- #4 
select SUBSTRING_INDEX(email,'@',-1) as domain, AVG(score) as Average from score
group by domain;