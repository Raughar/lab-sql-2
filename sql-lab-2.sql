use sakila;

-- Selecting all the actor with the first name Scarlett:
select *
from actor
where  first_name = "Scarlett";

-- Selecting all the actors with the last name Johansson:
select *
from actor
where last_name = "Johansson";

-- Printing how many films are available to rent:
select * from rental;

-- Getting how many films have been rented:
select count(inventory_id) as RentedFilms from rental
where return_date is null;


-- Discovering what's the longest and shortest rental period:
select  max(datediff(return_date, rental_date)) as Maximum_Rent_Period, min(datediff(return_date, rental_date)) as Minimum_Rent_Period
from rental;

-- Finding out what's the longest and shortest movie durations:
select max(length) as max_duration, min(length) as min_duration from film;

-- Finding the average film duration:
select avg(length) as average_duration from film;

-- Getting the date format of the previous step:
select cast(concat(floor(avg(length) / 60), ':', lpad(avg(length) % 60, 2, '0')) as time) as AvgDurationFormatted
from film;

-- Finding out which movies are longer than 3 hours:
select film_id, title from film
where length > 180;
 
 -- Formatting the names and emails:
 select concat(concat(ucase(substring(first_name, 1, 1))), lcase(substring(first_name, 2)), " ",  ucase(last_name), " - ", lcase(email)) as FromattedCustomerInfo from customer;
 
 -- Getting the length of the longest film title
 select max(length(title)) as LongestTitle from film;
 

