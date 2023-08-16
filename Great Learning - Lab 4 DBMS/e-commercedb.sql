drop table category;
create table category (
CAT_ID int not null auto_increment,
CAT_NAME varchar(20) not null,
primary key (CAT_ID)
);

drop table product;
create table product (
PRO_ID int not null auto_increment,
PRO_NAME varchar(20) not null,
PRO_DESC varchar(60) default null,
CAT_ID int default null,
primary key (PRO_ID),
key CAT_ID (CAT_ID)
);

drop table supplier;
create table supplier (
SUPP_ID int not null auto_increment,
SUPP_NAME varchar(50) not null,
SUPP_CITY varchar(50) not null,
SUPP_PHONE varchar(50) not null,
primary key (SUPP_ID)
);

drop table supplier_pricing;
create table supplier_pricing (
PRICING_ID int not null auto_increment,
PRO_ID int not null,
SUPP_ID int not null,
SUPP_PRICE int default 0,
primary key (PRICING_ID),
key PRO_ID (PRO_ID),
key SUPP_ID (SUPP_ID)
);

drop table customer;
create table customer (
CUS_ID int not null auto_increment,
CUS_NAME varchar(20) not null,
CUS_CITY varchar(30) not null,
CUS_PHONE varchar(10) not null,
CUS_GENDER char(1) not null,
primary key (CUS_ID)
);

drop table orders;
create table orders (
ORD_ID int not null auto_increment,
ORD_DATE date default null,
CUS_ID int default null,
PRICING_ID int default null,
primary key (ORD_ID),
key CUS_ID (CUS_ID),
key PRICING_ID (PRICING_ID)
);

drop table rating;
create table rating (
RAT_ID int not null auto_increment,
ORD_ID int default null,
RAT_RATSTARS int not null default 5,
primary key (RAT_ID),
key ORD_ID (ORD_ID)
);

insert into category (CAT_ID, CAT_NAME) values
(1, 'BOOKS'),
(2, 'GAMES'),
(3, 'GROCERIES'),
(4, 'ELECTRONICS'),
(5, 'CLOTHES'),
(6, 'SPORTS');

insert into product (PRO_ID, PRO_NAME, PRO_DESC, CAT_ID ) values
(1, 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2),
(2, 'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5),
(3, 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB S', 4),
(4, 'OATS', 'Highly Nutritious from Nestle', 3),
(5, 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1),
(6, 'MILK', '1L Toned MIlk', 3),
(7, 'Boat EarPhones', '1.5Meter long Dolby Atmos', 4),
(8, 'Jeans', 'Stretchable Denim Jeans with various sizes and col', 5),
(9, 'Project IGI', 'compatible with windows 7 and above', 2),
(10, 'Hoodie', 'Black GUCCI for 13 yrs and above', 5),
(11, 'Rich Dad Poor D', 'Written by RObert Kiyosaki', 1),
(12, 'Train Your Brai', 'By Shireen Stephen', 1);

insert into supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) values
(1, 'Rajesh Retails', 'Delhi', '1234567890'),
(2, 'Appario Ltd.', 'Mumbai', '2589631470'),
(3, 'Knome products', 'Banglore', '9785462315'),
(4, 'Bansal Retails', 'Kochi', '8975463285'),
(5, 'Mittal Ltd.', 'Lucknow', '7898456532');

insert into supplier_pricing (PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE) values
(1, 1, 2, 1500),
(2, 3, 5, 30000),
(3, 5, 1, 3000),
(4, 2, 3, 2500),
(5, 4, 1, 1000),
(6, 12, 2, 780),
(7, 12, 4, 789),
(8, 3, 1, 31000),
(9, 1, 5, 1450),
(10, 4, 2, 999),
(11, 7, 3, 549),
(12, 7, 4, 529),
(13, 6, 2, 105),
(14, 6, 1, 99),
(15, 2, 5, 2999),
(16, 5, 2, 2999);

insert into customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values
(1, 'AAKASH', '9999999999', 'DELHI', 'M'),
(2, 'AMAN', '9785463215', 'NOIDA', 'M'),
(3, 'NEHA', '9999999999', 'MUMBAI', 'F'),
(4, 'MEGHA', '9994562399', 'KOLKATA', 'F'),
(5, 'PULKIT', '7895999999', 'LUCKNOW', 'M'),
(6, 'VIRAT', '9890989065', 'DELHI', 'M');

insert into orders (ORD_ID, ORD_DATE, CUS_ID, PRICING_ID) values
(101, '2021-10-06', 2, 1),
(102, '2021-10-12', 3, 5),
(103, '2021-09-16', 5, 2),
(104, '2021-10-05', 1, 1),
(105, '2021-08-16', 4, 3),
(106, '2021-08-18', 1, 9),
(107, '2021-09-01', 3, 7),
(108, '2021-09-07', 5, 6),
(109, '2021-09-10', 5, 3),
(110, '2021-09-10', 2, 4),
(111, '2021-09-15', 4, 5),
(112, '2021-09-16', 4, 7),
(113, '2021-09-16', 1, 8),
(114, '2021-09-16', 3, 5),
(115, '2021-09-16', 5, 3),
(116, '2021-09-17', 2, 14),
(117, '2023-05-02', 4, 3);

insert into rating (RAT_ID, ORD_ID, RAT_RATSTARS) values
(1, 101, 4),
(2, 102, 3),
(3, 103, 1),
(4, 104, 2),
(5, 105, 4),
(6, 106, 3),
(7, 107, 4),
(8, 108, 4),
(9, 109, 3),
(10, 110, 5),
(11, 111, 3),
(12, 112, 4),
(13, 113, 2),
(14, 114, 1),
(15, 115, 1),
(16, 116, 0);

select CUS_GENDER, count(*) from customer 
inner join orders using (CUS_ID)
inner join supplier_pricing using (PRICING_ID)
where SUPP_PRICE  >= 3000
group by CUS_GENDER;

select ORD_ID, PRO_NAME from customer 
inner join orders using (CUS_ID)
inner join supplier_pricing using (PRICING_ID)
inner join product using (PRO_ID)
where CUS_ID = 2;

select SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE, count(SUPP_PRICE) from supplier
inner join supplier_pricing using (SUPP_ID)
group by SUPP_ID having count(SUPP_PRICE) > 1;

select CAT_ID, CAT_NAME, PRO_NAME, SUPP_PRICE from category 
inner join product using (CAT_ID)
inner join supplier_pricing using (PRO_ID)
where SUPP_PRICE in 
( select min(SUPP_PRICE) from supplier_pricing 
 inner join product using (PRO_ID)
 inner join category using (CAT_ID)
 group by CAT_ID
)
order by CAT_ID;

select PRO_ID, PRO_NAME from product
inner join  supplier_pricing using (PRO_ID)
inner join orders using (PRICING_ID)
where ORD_DATE > "2021-10-05";

select CUS_NAME, CUS_GENDER from customer 
where CUS_NAME like 'A%' or CUS_NAME like '%A'; 

