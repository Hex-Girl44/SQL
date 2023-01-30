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

