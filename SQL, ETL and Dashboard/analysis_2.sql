use sales;

select * from markets;
select * from transactions;
select * from date;


-- Check the revenue of year 2020  

select SUM(sales_amount) 
from transactions
Inner Join `date`
on transactions.order_date = date.date
where date.year = 2020 and (transactions.currency = 'INR\r' or transactions.currency = 'USD\r') ;

-- Check the revenue of year 2019  

select SUM(sales_amount) 
from transactions
Inner Join `date`
on transactions.order_date = date.date
where date.year = 2019 and (transactions.currency = 'INR\r' or transactions.currency = 'USD\r') ;

-- Check the revenue of year 2020  and month Jan

select distinct month_name from date;

select SUM(sales_amount) 
from transactions
Inner Join `date`
on transactions.order_date = date.date
where date.year = 2020 and date.month_name = 'January' and (transactions.currency = 'INR\r' or transactions.currency = 'USD\r') ;

-- Check the revenue of year 2020  and Market Chennai

select SUM(sales_amount) 
from transactions
Inner Join `date`
on transactions.order_date = date.date
where date.year = 2020 and transactions.market_code = 'Mark001' and (transactions.currency = 'INR\r' or transactions.currency = 'USD\r') ;

-- Top 5 customers

select * from transactions;
select * from customers;

select * from transactions
group by customer_code
order by sales_amount DESC;

select MAX(sales_amount) from transactions;



