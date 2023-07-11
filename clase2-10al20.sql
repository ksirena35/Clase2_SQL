select
	company_name, 
	contact_name , 
	order_date
from
	customers c
inner join 
	orders o on c.customer_id = o.customer_id;

select 
	order_id, 
	product_name, 
	discount
from
	order_details od 
inner join 
	products p on od.product_id  = p.product_id;
	
select 
	o.customer_id,
	company_name,
	order_id,
	order_date
from
	orders o
left join 
	customers c on o.customer_id  = c.customer_id;

select
	et.employee_id, 
	e.last_name, 
	et.territory_id, 
	t.territory_description
from 
	employee_territories et
left join 
	employees e on et.employee_id = e.employee_id
join  
	territories t on et.territory_id = t.territory_id;

select
	O.order_id, 
	C.company_name 
from
	orders o 
left join 
	customers c on O.customer_id  = C.customer_id;

select
	O.order_id, C.company_name 
from 
	orders o 
right join 
	customers c on O.customer_id  = C.customer_id;

select  
	s.company_name, 
	o.order_date
from 
	shippers s
right join orders o on s.shipper_id = o.ship_via
where o.order_date >= '1996-01-01' and o.order_date <= '1996-12-31';

select 
	E.first_name, 
	E.last_name, 
	ET.territory_id 
from 
	territories t, employees e 
full outer join employee_territories et  on e.employee_id = et.employee_id;

select 
   o.order_id, 
   od.unit_price,
   od.quantity,
   (od.unit_price * od.quantity) as total
from
    orders o 
full outer join 
   	order_details od on od.order_id = o.order_id 
group by
    o.order_id, od.unit_price, od.quantity;
    	
select 
	s.company_name 
from 
	suppliers s 
union
select 
	c.company_name 
from 
	customers c;
	
select 
	e.first_name 
from 
	employees e;

