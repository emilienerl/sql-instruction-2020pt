-- selecting all customers
select * from customers;

-- semicolon shows where statement ends

-- select by primary key
select * from customers where customerNumber = 131;

-- 122 rows in table
select count(*) from customers;

-- count with a alias, this renames header as row_count
select count(*) as row_count from customers;

-- count with an alias, shorthand; removing the "as"
select count(*) row_count from customers;

-- sum function of the credit limit of all customers
select sum(creditLimit) from customers;

-- avg function of the credit limit of all customers
select avg(creditLimit) from customers;

-- formating currency with format and avg, so it only has 2 decimal places
select format(avg(creditLimit),2) from customers;

-- avg, format, and concat function and adding an alias of avg_credit_limit
select concat('$',format(avg(creditLimit),2)) as avg_credit_limit from customers;

-- group by: avg, format, and concat function by country
select country, concat('$',format(avg(creditLimit),2)) 
as avg_credit_limit from customers 
group by country;

-- group by: avg, format, and concat function by country in descending order
select country, concat('$',format(avg(creditLimit),2)) 
as avg_credit_limit from customers 
group by country order by avg(creditLimit) desc;

-- group by, having: avg, format, and concat function by country where average is 0
select country, concat('$',format(avg(creditLimit),2)) 
as avg_credit_limit from customers 
group by country 
having avg(creditLimit) > 0 
order by avg(creditLimit) desc;

-- max credit limit
select max(creditLimit) from customers;

-- min credit limit
select min(creditLimit) from customers;