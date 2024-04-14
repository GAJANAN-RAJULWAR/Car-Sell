#Question 1. Add New Colm Phone number  and complate phonenumber data
use project;
alter table customber
add phonenumber varchar (20);

select* from customber;
update customber set phonenumber='3187654321' where
customber_id=20;

/* Question 2 
show the Highest prise in car 
and show customber the data Higest car parches 
*/
/*
select max(price) from car;
select *from customber  where price like '45400';
*/
/* Question 3 
show the data car table enginzize 130 to 326 
select *from car where enginesize between 130 and 326;
*/
/* Question 4 
explain the count of stroke 
select  count(stroke) from car;
*/
/* Question 5 
Conact table car and customber use the left join
Conact table car and emp  use the right join

select *from  car left join customber on
car.car_id=customber.customber_id;

select *from car right join employee on
car.car_id=employee.emp_id;
*/
/* 6. Question
show the data horsepower 168 power above and peakrpmm 5000 low

select *from car where horsepower>=168.8 and peakrpm<=5000;
*/
/* Question 7
show the emploee data emp_id 1,6,5 and emp cell tar car data
*/
/*
update customber set carpurches_name='subaru' where customber_id=7;
select *from employee where emp_id in(1,6,5);
select *from customber cross join employee on
customber.customber_id=employee.emp_id;
*/
select *from car;
/* Question 8 
select to 2 categrey first platinum and second gold prise start 13495 crete the data
*/
/*
select carName,price,
if (price>=13495 ,'platinum customber','gold customber') as new_rs from car;
*/
/* Question 9 
show the data max engine size top three
*/
/*
select *from car order by enginesize desc limit 3;
*/
/* Question Number 10 
show the comany newhorsepower less than 288 power */
/*
select carname,horsepower,
case
when horsepower<=288 then 'indian comapny'
when horsepower<=262 then 'american company'

else 'Japan company engine' end as newhorsepower from car;
*/
select max(enginesize) from car;

/* Question 11
Muliple Table Join show tha all id
Table name car,employee,customber
*/
/*
select *from car left join employee
on car.car_id=emp_id
inner join customber on
car.car_ID=customber.customber_id;
*/
/* 12 
update salary and then use rollback function
*/
/*
select *from employee;
alter table employee add salary varchar(33);
commit;
update employee set salary ='60000' where
emp_id=12;
update employee set salary=5555 where emp_id=1;
rollback;
*/

/* 13 question carname all data small world and carbody colum capital world
*/

select lower(carname) from car;
select upper(carbody) from car;



