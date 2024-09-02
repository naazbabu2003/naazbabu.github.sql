use info;
DROP TABLE IF EXISTS OLYMOICS_HISTORY;
CREATE TABLE olympics_history(id int, 
name_ varchar(70),
sex varchar(50),
age varchar(50),
height varchar(75),
weight varchar(75),
team varchar(75),
noc varchar(75),
games varchar(75),
year int(75),
season varchar(75),
city varchar(75),
sport varchar(75),
ecevnt varchar(75),
medal varchar(75));

DROP TABLE IF EXISTS olympics_history_noc;
	create table olympics_history_noc( 
	noc varchar(10),
	region VARCHAR(75),
    notes varchar(100)
    );
    use info;
    select * from olympics_history;
    select * from olympics_history_noc;
    
 /*1. find total no of summer games
 2.find for each sport , how many games where they playes in.
 compare 1 & 2*/
 
WITH t1 AS (
    SELECT COUNT(DISTINCT games) AS total_summer_games
    FROM olympics_history
    WHERE season = 'Summer'
),

 t2 as 
(select distinct sport,games from olympics_history
where season='Summer' order by games),

 t3 as 
(select sport,count(games) as no_of_games
from t2
group by sport)

select * from t3
join t1 on t1.total_summer_games = t3.no_of_games; 


select sport,count(games) as no_of_games
from olympics_history
group by sport;

with t1 as
 (select name_,count(1) AS total_medalss
from 
olympics_history
where medal="Gold"
group by name_
order by count(1) desc),

t2 as 
   (select *, dense_Rank() over (order by total_medalss desc) as rnk
   from t1)
   select*
   from t2
   where rnk<=5;
   
   select nr.region AS country,medal,count(1) as total_medals
   from olympics_history oh
   join olympics_history_noc nr on nr.noc= oh.noc
   where medal<> 'NA'
   group by nr.region, medal
   order by country;

SELECT 
    nr.region AS country,
    SUM(CASE WHEN medal = 'Bronze' THEN 1 ELSE 0 END) AS bronze,
    SUM(CASE WHEN medal = 'Gold' THEN 1 ELSE 0 END) AS gold,
    SUM(CASE WHEN medal = 'Silver' THEN 1 ELSE 0 END) AS silver
FROM 
    olympics_history oh
JOIN 
    olympics_history_noc nr ON nr.noc = oh.noc
WHERE 
    medal <> 'NA'
GROUP BY 
    nr.region
ORDER BY 
    gold desc ,silver desc,bronze desc;
    
    /*Q. Write SQL quary to display fro each Olympic Games,Which country won the highest gold,silver and bronze medals*/
    