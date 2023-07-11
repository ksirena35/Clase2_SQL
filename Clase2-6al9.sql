--6.
insert into  
	customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax)
values ('TANAN', 'katherinet', 'katherine tananta', 'jefa', 'cordoba_3344', 'buenos_aires', 'south', 1133, 'argentina', 1134567890, null);

--7.
insert into 
	region (region_id, region_description)
values (5, 'center');
		
--8.
select *
from customers c 
where region is null;

--9.
select
product_name,
coalesce (unit_price, 10) as price
from
products p
