--1.

select distinct category_name
			from categories c;
--2.
select distinct 
			region
		from
			customers c;
--3.
select distinct 
			contact_title
		from
			customers c;

--4.
select *
		from 
			customers c
		order by 
			country;

--5.
select *
		from 
			orders o 
		order by 
			(employee_id, order_date)

	
