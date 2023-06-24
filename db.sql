select product_id, name from products where quantity_in_stock>=34;
select * from products;
select name as files from products where unit_price>3 and (quantity_in_stock<30 or quantity_in_stock=38);
select * from products where unit_price not in (1.21,3.35, 4.53);

select * from products where unit_price between 2 and 5;

-- have e in between two letters
select * from products where name like "%e%";
-- have r at third position
select * from products where name like "__r_%";

-- words which ends with po or have lettuce or petit in it
select * from products where name regexp 'po$|lettuce|petit';
-- words which start with po or have lettuce or petit in it
select * from products where name regexp '^po|lettuce|petit';

-- [a-f] will represent any character between a and f
-- gives data for all the words wher a,r,o comes after o
select * from products where name regexp 'o[aro]';

select * from products order by name,unit_price asc

select * from products order by unit_price desc limit 5,5;

SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;
