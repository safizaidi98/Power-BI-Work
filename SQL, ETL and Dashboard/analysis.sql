use sales;

select * from sales.transactions;

-- inner join

select sales.transactions.*, sales.date.* 
from sales.transactions 
inner join sales.date 
on sales.transactions.order_date = sales.date.date 
where year = 2020 ;

-- calculating revenue

select sum(sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date where year = 2020 ;

select * from markets;
-- calculating revenue of chennai whose code is Mark001
select sum(sales_amount) as Revenue_by_Chennai
from sales.transactions 
inner join sales.date 
on sales.transactions.order_date = sales.date.date 
where year = 2020 AND market_code = 'Mark001';

-- Distinct product by Chennai

select distinct product_code
from sales.transactions 
where market_code = 'Mark001';

-- check sales_amount which are less than 0

select * from sales.transactions where sales_amount <= 0;
select count(*) from sales.transactions where sales_amount <= 0;


-- cheching duplications in currency

select * from transactions;

select distinct currency from transactions;
-- 'INR'
-- 'INR\r'

select count(*) from transactions where currency = 'INR\r';
select count(*) from transactions where currency = 'INR';

select count(*) from transactions where currency = 'USD\r';
select count(*) from transactions where currency = 'USD';

