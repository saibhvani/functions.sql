create table employee1(
id int primary key auto_increment,
name varchar(20) not null,
sal bigint not null,
state varchar(20)not null,
country varchar(20)not null default('india'),
isactive bit default(1)
);

insert  into employee1(name,sal,state,country,isactive)values('bhavani',50000,'ts','usa',1);
insert  into employee1(name,sal,state,country,isactive)values('jyothi',40000,'ap','india',1);
insert  into employee1(name,sal,state,country,isactive)values('navya',30000,'ts','india',1);
insert  into employee1(name,sal,state,country,isactive)values('sujitha',20000,'ap','india',1);

select *from employee1;

#count no of employees in a table
select count(*) from employee1;
select count(id)from employee1;

#count no.of employees in ap and ts
select count(id) from employee1 where state="ts";
select count(id)from employee1 where country="india";
select count(id) from employee1 where state="ap";
#get both results in one result set
select state,count(id)as noofemployees from employee1 group by state;
select country,count(id)as noofemployees from employee1 group by country;
#count no.of employees in table

select count(id) from employee1;

select count(name) from employee1;

#aggregate function
#sum
select sum(id) from employee1;
#avg
select avg(id) from employee1;

select avg(sal) from employee1;
#min
select min(sal) from employee1;
#max
select max(sal) from employee1;

select state,count(id) from employee1 where state="ts";
select name,count(name) from employee1 where name="bhavani";

#string
#ltrim
select ltrim (id)from employee1;
select ltrim(name) from employee1;
#rtrim
select rtrim(id) from employee1;
#len
select length(id) from employee1;
select length(name) from employee1;
select length(state) from employee1;
#left
select left (id, 1)from employee1;
select left (name, 5)from employee1;
#right
select right (id,2 ) from employee1;
select right(name,1 )from employee1;
select right(state,2 )from employee1;
#lower
select lower("Iam")from employee1;
select lower("BHAVANI")from employee1;
#upper
select upper("good")from employee1;
select upper('bhavani')from employee1;
select upper(name)from employee1;
#date
#get date
select current_date();
select now();
#date add
select date_add("2023-12-12",interval 20 day);

select cast("2023-12-12" as date);