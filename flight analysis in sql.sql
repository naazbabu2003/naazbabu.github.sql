CREATE DATABASE travel;
use travel;
select*from test;
select * from train;

select satisfaction,count(*)
from train
group by satisfaction;

select satisfaction ,count(*)
from test
group by satisfaction;

select satisfaction,avg(age)
from train
group by satisfaction;

select satisfaction,avg(age)
from test
group by satisfaction;

select * from test;

select `customer type`,gender,count(*) as count
from test
group by `customer type`,Gender;

select `customer type`,count(*)
from test 
group by `customer type`;

select `Customer type`,count(*)
from train
group by `Customer type`;


select * from train;

select Gender,class, count(*)
from train
group by gender,class;

select class,count(*)
from train
group by class;

select class,count(*)
from test
group by class;

select * from test;
SELECT "Customer Type", Gender, COUNT(*) as Count
FROM test
GROUP BY "Customer Type", Gender;

select "inflight wifi service",satisfaction,count(*)
from test
group by "infliht wifi service",satisfaction;

select "inflight wifi service",satisfaction,count(*)
from train
group by "inflight wifi service",satisfaction;
select * from test;

select  `Arrival delay in minutes`
 from test
order by `Arrival Delay in minutes` desc
limit 10;

select *from train;

select `type of travel`,avg(`flight distance`)
from train
group by `type of travel`;

SELECT * from train;

select class,
avg(`inflight entertainment`) as avgenter
from train 
group by class;












