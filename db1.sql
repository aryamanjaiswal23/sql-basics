
 
 select p.date, p.payment_id,p.invoice_id,c.client_id,p.amount,p.payment_method from payments p join clients c on c.client_id=p.client_id
 join payment_methods pm on pm.payment_method_id=p.payment_method
 -- compound joins
 select p.date,  p.amount,i.number,i.client_id,i.payment_total from payments p join invoices i on p.client_id=i.client_id and p.invoice_id =i.invoice_id
 
 -- left and  right outer joins
 select p.payment_id,p.client_id,p.date,pm.name from payments p left join payment_methods pm on p.payment_method=pm.payment_method_id
 select p.payment_id,p.client_id,p.date,pm.name from payments p right join payment_methods pm on p.payment_method=pm.payment_method_id
 