select distinct category_name
			from categories c;
select distinct 
			region
		from
			customers c;
select distinct 
			contact_title
		from
			customers c; 
select *
		from 
			customers c
		order by 
			country;
select *
		from 
			orders o 
		order by 
			(employee_id, order_date)

	
