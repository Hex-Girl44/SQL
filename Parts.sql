CReate DATABASE Parts; 
Drop table part 
Use Parts;
CREATE TABLE part(
  P_id Varchar(50) NOT NULL,
  p_name VARCHAR(50) NOT NULL,
  colour VARCHAR(50) NOT NULL,
  weight FLOAT(2),
  city VARCHAR(50) NOT NULL

);
Insert INTO part
(P_id, p_name, colour, weight, city)
Values
('P1', 'NUT', 'RED', 12, 'LONDON'),
('P2', 'BOLT', 'GREEN', 17, 'PARIS'),
('P3', 'SCREW', 'BLUE', 17, 'ROME'),
('P4', 'SCREW', 'RED', 14, 'LONDON'),
('P5', 'CAM', 'BLUE', 12, 'PARIS'),
('P6', 'COG', 'RED', 19, 'LONDON');
select* from part;

Use Parts;
CREATE Table project(
J_id Varchar(50) NOT NULL,
  j_name VARCHAR(50) NOT NULL,
  city Varchar(50) NOT NULL
);
Insert into project
(J_id, j_name, city)
Values
('J1', 'SORTER', 'PARIS'),
('J2', 'DISPLAY', 'ROME'),
('J3', 'OCR', 'ATHENS'),
('J4', 'CONSOLE', 'ATHENS'),
('J5', 'RAID', 'LONDON'),
('J6', 'EDS', 'OSLO'),
('J7', 'TAPE', 'LONDON');
select * from part;

use Parts;
Create Table supplier(
  S_id Varchar(50) NOT NULL,
  Sname VARCHAR(50) NOT NULL,
  s_status Int Not null,
  city Varchar(50) Not null
);
Insert into supplier 
(S_id, sname, s_status, city)
Values 
('S1', 'SMITH', 20, 'LONDON'),
('S2', 'JONES', 10, 'PARIS'),
('S3', 'BLAKE', 30, 'PARIS'),
('S4', 'CLARK', 20, 'LONDON'),
('S5', 'ADAMS', 30, 'ATHENS');
select *from supplier;

Use Parts;
Create Table supply(
S_id varchar(50) NOT null,
P_id varchar(50) NOT NULL,
J_id varchar(50) Not null,
quantity int not null
);
Insert into supply
(S_id, P_id, J_id, quantity)
Values
('S1', 'P1', 'J1', 200),
('S1', 'P1', 'J4', 700),
('S2', 'P3', 'J1', 400),
('S2', 'P3', 'J2', 200),
('S2', 'P3', 'J4', 500),
('S2', 'P3', 'J5', 600),
('S2', 'P3', 'J6', 400),
('S2', 'P3', 'J7', 800),
('S2', 'P5', 'J2', 100),
('S3', 'P3', 'J1', 200),
('S3', 'P4', 'J2', 500),
('S4', 'P6', 'J3', 300),
('S4', 'P6', 'J7', 300),
('S5', 'P2', 'J2', 200),
('S5', 'P2', 'J4', 100),
('S5', 'P5', 'J5', 500),
('S5', 'P5', 'J7', 100),
('S5', 'P6', 'J2', 200),
('S5', 'P1', 'J4', 100),
('S5', 'P3', 'J4', 200),
('S5', 'P4', 'J4', 800),
('S5', 'P5', 'J4', 400),
('S5', 'P6', 'J4', 500);
select* from supply

select distinct 
p_name, P_id
from part;

select J_id, city
from project
where city = 'LONDON';

/*find the name and weight of red parts*/
Use Parts;
Select p_name, weight
From part
where colour = 'RED';

/* find unique names of suppliers from London*/
Select distinct
sname
from supplier
where city = 'LONDON';

