create database sales_analysis;
use sales_analysis;
create table sales(order_id int primary key,order_date date,region varchar(50),
category varchar(50),product_name varchar(100),quantity int,sales decimal (10,2),
profit decimal(10,2),customer_name varchar(100));
drop table sales;
create table sales(order_id int AUTO_INCREMENT primary key,order_date date,region varchar(50),
category varchar(50),product_name varchar(100),quantity int,sales decimal (10,2),
profit decimal(10,2),customer_name varchar(100));
describe sales;
select * from sales;
select sum(sales) as total_sales from sales;
select sum(profit) as total_profit from sales;
select  sum(profit)/sum(sales) from sales;
select region, sum(sales) as total_sales from sales group by region order by total_sales desc; 
select customer_name, sum(sales) as total_sales from sales group by customer_name order by total_sales desc limit 5 ;
select product_name, sum(profit) as total_profit from sales group by product_name order by total_profit desc limit 3 ;
select region, sum(sales) as total_sales from sales where category='Electronics' group by region order by total_sales desc;
select month(order_date) as month, sum(sales) as total_sales from sales group by month(order_date) order by total_sales desc limit 1;
select * from sales;