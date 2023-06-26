
-- if we join using key which has the same name in both the tables we can just use using keyword in place of on keyword
select c.customer_id, c.first_name,c.last_name,c.phone,order_id from customers c left join orders o using (customer_id)
 right join order_items oi using (order_id)
 -- cross joins
 select c.first_name,s.name from customers c, shippers s order by c.first_name
 
 -- unions
 select first_name,last_name from customers union select * from shippers
 
 