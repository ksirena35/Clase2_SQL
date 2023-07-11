select  
	product_name, 
	product_id
from
	products
where  
	product_id in (select product_id from order_details);


select  
	c.company_name 
from 
	customers c 
where  
	c.country  = 'Argentina';


select distinct 
	p.product_name
from 
	products p
where not exists
	(select 1 from 
		order_details od
	inner join orders o on od.order_id = o.order_id
	where o.ship_country = 'France'
	and od.product_id = p.product_id);

 
select
	order_id, 
	SUM(quantity) as total_quantity
from 
	order_details
group by
	order_id;

	
select 
	p.product_name, 
	avg(units_in_stock)
from	
	products p 
group by 
	p.product_name;
	
select 
	p.product_name, sum(units_in_stock)
from 
	products p  
group by p.product_name
having sum(units_in_stock) > 100;


--Aqui no sabia como sacar la frecuencia de pedido, pero deduje que estaba promediando
--los orders id, segun el print, para mi esa no es la frecuencia.
--Solo hice la query para satisfacer el print, pero no tiene sentido.
select
	c.company_name, avg(o.order_id) as averageorders
from 
	customers c  
inner join orders o on c.customer_id = o.customer_id 
group by c.company_name 
having avg(o.order_id) > 10;

select
  	p.product_name,
	case 
		when p.discontinued = 1 then 'Discontinued'
		else  c.category_name
		end as category
from 
	products p
inner join categories c on p.category_id = c.category_id;

		
select  
	e.first_name, e.last_name, 
	case 
    	when e.title  = 'Sales Manager' then 'Gerente de Ventas'
   		else e.title
  		end as job_title
from
	employees e;

