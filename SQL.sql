create database regex;
use regex;
create table product( pid int, pname varchar(20), price int);
insert into product values(10,"Iphone",20000), (11,"TV",10000),
(12,"LED",3000), (13,"Jeans",800);

select * from product;

create table orders1( oid int, city varchar(20), pid int);
insert into orders1 values(124111,"Jaipur",10), (124112,"GOA",11),
(145631,"Manali",12), (59869011,"Raipur",16);
select * from orders1;

select o.oid, o.city, o.pid ,p.pname, p.pid from orders1 as o
join product as p where o.pid=p.pid;
--- cartision join---> if we not condition then first table of row join second table row cross (match) all row
-- cross yh fir cartesian join (A * B    M*N

select o.oid, o.city, o.pid ,p.pname, p.pid from orders1 as o
LEFT join product as P ON o.pid=p.pid;

-- FULL OUTER JOIN NOT SUPPORT IN MY SQL 
