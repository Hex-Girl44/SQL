Create database SHOP;
Use SHOP;
Create Table SALES1(
store Varchar(15) NOT NULL,
week int NOT NULL,
day varchar(9) NOT NULL,
salesperson varchar(15) NOT NULL,
salesamount Float(2),
month varchar(3) NOT NULL
);

Insert into SALES1
(store, week, day, salesperson, salesamount, month)
Values
('London', 2, 'Monday', 'Frank', 56.25, 'MAY'),
('London', 5, 'Tuesday', 'Frank', 74.32, 'SEP'),
('London', 5, 'Monday', 'Bill', 98.42, 'SEP'),
('London', 5, 'Saturday', 'Bill', 73.90, 'DEC'),
('London', 1, 'Tuesday', 'Josie', 44.27, 'SEP'),
('Dusseldorf', 4, 'Monday', 'Manfred', 77.00, 'JUL'),
('Dusseldorf', 3, 'Tuesday', 'Inga', 9.99, 'JUN'),
('Dusseldorf', 4, 'Wednesday', 'Manfred', 86.81, 'JUL'),
('London', 6, 'Friday', 'Josie', 74.02, 'OCT'),
('Dusseldorf', 1, 'Saturday', 'Manfred', 43.11, 'APR');

use shop;
select * from sales1;

/*Update sales1
Set store = 'London'
Where store = 'LONDON';
ask about this
*/

Select DISTINCT s.salesperson, store, week, month 
from sales1 s
where store = 'London'
AND salesamount > 50.00;

Select DISTINCT s.salesperson, week, month 
from sales1 s
where store = 'London'
AND salesamount < 50.00;

Select DISTINCT s.salesperson, store, week, month 
from sales1 s
where salesamount < 50.00;

Select DISTINCT s.salesperson, store, month
from sales1 s
where salesamount > 50.00 AND
(week = 1 or week = 5);

Select Distinct s.salesperson, store
from sales1 s
where salesamount 
Between 45 AND 95;

/*
Queries from class 3 ppt
*/

/* Find all sales records (and all columns) that took place in the London store, not in
December, but sales concluded by Bill or Frank for the amount higher than £50 */

use shop;
select *
from sales1
where store = 'London'
And month != 'DEC'
and salesamount > 50
and (salesperson = 'Bill' or salesperson = 'Frank');

/* Find out how many sales took place each week (in no particular order) */

Select
COUNT(salesamount)
from sales1 
group by week;

/* Find out how many sales took place each week (and present data by week in
descending and then in ascending order) */

Select week,
count(salesamount)
from sales1 
group by week 
order by week ASC;

Select
COUNT(salesamount)
from sales1 
group by week 
order by week DESC;

/*Find out how many sales were recorded each week on different days of the week */

Select week, day,
Count(salesamount)
from sales1
group by week, day
order by week;

/*We need to change salesperson's name Inga to Annette */

Select 
replace ('Inga', 'Inga', 'Annette')
From sales1;

select * from sales1;

use shop;
Update sales1
set salesperson = 'Annette'
where salesperson ='Inga';

/*Find out how many sales did Annette do */

Select Count(salesamount), salesperson 
from sales1
where salesperson = 'Annette';

/*Find the total sales amount by each person by day*/

Select day, salesperson, Count(salesamount)
from sales1
group by day, salesperson, salesamount
order by salesperson;

/*How much (sum) each person sold for the given period*/

Select day, salesperson, SUM(salesamount)
from sales1
group by day, salesperson, salesamount
order by salesperson

/*How much (sum) each person sold for the given period, including the number of sales
per person, their average, lowest and highest sale amounts*/

Select salesperson, week, sum(salesamount), count(salesamount), avg(salesamount), min(salesamount), max(salesamount)
from sales1
group by salesperson, week;

/*Find the total monetary sales amount achieved by each store*/

Select store, sum(salesamount)
from sales1
group by store;

/*Find the number of sales by each person if they did less than 3 sales for the past
period*/

Select salesperson, count(salesamount)
from sales1
group by salesperson
having count(salesamount) < 3;

/*Find the total amount of sales by month where combined total is less than £100*/

Select month, sum(salesamount)
from sales1
group by month
having sum(salesamount) < 100;
