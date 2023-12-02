-- DDL COMMANDS CREATE , ALTER , DROP , TRUNCATE -- 
create DATABASE firstprograme ;
use firstprograme ;
create table employees(
employee_id int ,
employee_name char(50) not null , 
employee_email varchar(100) unique, 
joining_date date default(date.now()), 
short_desc text , 
ratings decimal(3,2)



);
select * from employees ; 
alter table employees add contact_no numeric ;
alter table employees drop column short_desc ; 
alter table employees modify ratings int ;
alter table employees rename column ratings to review ; 
alter table employees modify contct_no numeric ;
insert into employees value ( 1 ," Aditya Yadav " ,  " adav01official@gmail.com ", "2023-12-01" , 5 , 969678524 ) ;


select * from insurance_data ; 

use firstprograme ; 

create table mentor(
mentor_id int , 
mentor_name char(50) , 
mentor_no int , 
primary key(mentor_id) ,
);








create table employees1(
employee_id int ,
employee_name char(50) not null , 
employee_email varchar(100) unique, 
joining_date date default ('2023-01-10'), 
short_desc text , 
ratings decimal(3,2)
primary key (employee_id),
foreign key ( mentor_id) reference mentor(mentor_id) , 

); 
drop table employees1 ; 

DQL COMMANDS 
-- FROM , JOIN , WHERE , GROUP BY , HAVING , SELECT , ORDER BY , LIMIT 


use mavenmovies ; 

select * from film ; 
select title , description from film limit 3 ; 

select film_id , title from film order by film_id desc ;

select film_id , title from film where film_id > 20 ; 

select actor_id , actor_id from actor_award where actor_id > 1 ; 

select * from payment ; 
describe payment ; 

-- LOGICAL OPERATOR and or not 

select * from payment where amount > 2 and staff_id <= 5 or rental_id > 1000 ;

-- ARITHEMATIC OPERATOR + - * / 

select 2*2 ; 

select amount , amount*2 from payment ; 
select amount , amount*2 as add_amount from payment ; 





-- ARITHEMATIC OPERATOR + , - , * , % , /

use mavenmovies;
select * from payment ;
SELECT amount , 2*amount as double_amount from payment ; 
select amount , amount+2 as add_amount from payment ; 

 -- COMPARISON OPERATOR < , > , = , <= , >= , != , <> 
 
 select * from film ; 
 select*from film where rental_duration > 6 ; 
 
 -- LOGICAL OPERATOR AND , IN , OR , BETWEEN , NOT 
 select*from film where rental_duration > 6 and length < 100 ; 
 
 select * from film where rating != 'Pg' ; 
 select * from film where not rating != 'Pg' ; 
 
 select * from film where length between  80 and 120 ; 
 select * from film where length in (60,90,120) ; 
 
 -- Retrive the title of films that have rental rate greater than 4$ 
 
 select * from film ; 
 select * from film where rental_rate > 4.00 ; 
 select title , rental_rate from film where rental_rate > 4.00 ; 
 
 -- LSIT THE CUSTOMER NAMES AND EMAIL WHO LIVE IN ADDRESS  WITH THE ID 300 
 select * from customer ; 
 select customer_id , first_name , last_name , email from customer where address_id=300 ; 
 select * from customer where address_id = 300 ; 
   
   -- FIND THE FILMS WITH THE LENGTH BETWEEN 120 AND 150 MIN INCLUSIVES , DISPLAY THE TITLE AND LENGTH 
   
select * from film ; 
select title , length  from film where length between 120 and 150 ; 
select * from film where length between 120 and 150 ;  

-- RETRIVEE THE FIRST AND LAST NAME OF CUSTOMERS WHOSE NAME STARTS WITH ' S ' 
select * from customer ; 
select * from customer where first_name like 'S%';
select first_name , last_name from customer where last_name like 'S%S'; 

-- retrive the first name and last name of customer  whoes first name contains e 
 select  * from customer ; 
 select first_name , last_name from customer where last_name like 'A%E';
 SELECT first_name , last_name from customer where first_name like 'A%E' ;
 
 -- retrive the first name and last name of customer  whose firstname ends with e and have second letter a 
 
 select first_name , last_name from customer where first_name like '_A%E';
 
-- retrive the first name and last name of customer  whose firstname a is on second position and e on fourth position 

select first_name , last_name from customer where first_name like '_a_e%'; 

-- retrive the first name and last name of customer  whose first name have a on second position and  last name have letter e on fourth position 

select first_name , last_name from customer where first_name like '_a%'and last_name like '___e%' ; 

describe address 
 
 -- functions sql 

use mavenmovies; 
SELECT * FROM payment;
--                               mathematicsl function 
SELECT AVG(amount) FROM payment;

select count(*) from payment ; 
select min(amount) from payment ;
select max(amount) from payment ;

-- string function  concate ,  

select * from actor; 
select concat(first_name,last_name) from actor ; -- helps to join multiple strings 
select concat(first_name,' ',last_name) as name , 
length(concat(first_name,' ',last_name)) as length from actor ; -- length helps to find the character in string  

select upper(first_name) from actor ; 
select lower(first_name) from actor ; 
 -- substring   to extract data text data , starting point 
select * from customer ; 
select substr(email , 3 , 10) from customer ; 
select* from address ; 

-- DATE/TIME FUNCTION month , year , day , mopnthname , datedifference
select * from rental ;  
select rental_date ,  monthname(rental_date) from rental ;
select rental_date , year(rental_date) from rental ;
select rental_date , day(rental_date) as day from rental; 

select rental_date , return_date , datediff(rental_date,return_date ) as difference from rental ; 

-- WHAT SMALLEST RENTAL DURATION ? 
 select*from film ; 

select min(rental_duration) from film ;
-- HIGHEST REPLACEMENT COAST FROM ALL FILM 

select max(replacement_cost) from film  ;  

-- all films whose title length is greater than 10 characters 

select * from film where length(title) >10 ;

 use mavenmovies ; 

-- distinct function  hepls to find unique data in table 

select * from film ; 
select distinct(rating) from film ; 
select count(distinct(rating)) from film ;  

-- display the first four citites which start and end with a 
select * from city ; 

select city from city where city like 'a%a' limit 4;   

-- group by 
select * from film ; 
select rating , avg(replacement_cost) from film group by rating ; 
select title , avg(rental_duration ) from film group by title ;  

select * from film_actor ; 
select actor_id , count(film_id) as no_of_films from film_actor group by actor_id order by no_of_films desc;
 
 -- LIST OF TOTAL SALES AMOUNT FOR EACHG CUSTOMER IN DATABASE 
 
 select * from payment ; 
SELECT 
    customer_id, SUM(amount) AS Customer_Sale
FROM
    payment
GROUP BY customer_id;


 









