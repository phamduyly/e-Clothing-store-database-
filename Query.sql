-- List customer transaction and their payment type
select concat(c.surname,' ',c.firstname) as CustomerName, tr.purchaseType
from customer1 c JOIN `order` o ON c.customer_id = o.customer_id JOIN transact tr
on o.order_id = tr.order_order_id;
-- Quantity ordered
select concat(c.surname,' ',c.firstname) as CustomerName, o.quantity, o.total_price
from customer1 c JOIN `order` o ON c.customer_id = o.customer_id;
-- List cancelation order
select concat(c.surname,' ',c.firstname) as CustomerName
from customer1 c JOIN `order` o ON c.customer_id = o.order_id
where o.cancel = 'Y';