SELECT first_name, last_name FROM sakila.actor;

SELECT concat(first_name, " ", last_name) as 'actor_name' FROM sakila.actor ;

select actor_id, first_name, last_name from actor
where first_name = 'Joe';

select * from actor
where last_name like '%gen%';

select last_name, first_name from actor
where last_name like '%Li%';

select country_id, country from country
where country.country in 
(select Afghanistan, Bangladesh, China from country
);

alter table actor
add column description blob;

alter table actor
drop column description;

select last_name, count(distinct last_name) as count_name from actor;

replace into actor.first_name ='groucho'
values('HARPO');

SHOW CREATE TABLE address;

select first_name, last_name, address from staff
join address
on staff.address_id = address.address_id;

select first_name, last_name from staff
join payment
on staff.staff_id = payment.staff_id;

