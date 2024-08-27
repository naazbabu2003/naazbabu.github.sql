SELECT * FROM pizz.pizza_sales;
use pizz;

select pizza_size,count(*) as countsize
from pizza_sales
group by pizza_size;

describe pizza_sales;
SHOW COLUMNS FROM pizza_sales;

select order_date,count(*) as total_order
from pizza_sales
group by order_date
order by order_date ;


select*from pizza_sales;

SELECT 
    pizza_name,
    SUM(quantity) AS total_quantity_sold
FROM 
    pizza_sales
GROUP BY 
    pizza_name
ORDER BY 
    total_quantity_sold DESC
LIMIT 1;

SELECT * FROM pizza_sales;

select order_date,sum(total_price) as sum_sales
from pizza_sales
group by order_date
order by sum_sales desc
limit 5;
 
select pizza_size,sum(total_price) as size_sales
from pizza_sales
group by pizza_size
order by size_sales desc
limit 1;

select pizza_name,sum(total_price) as pizzaname_sales
from pizza_sales
group by pizza_name
order by pizzaname_sales desc
limit 5;

