use Premier_Project
select * from dbo.Premier

--Top 10 profitable products
select TOP 10
product_name,
round(SUM(profit),2) AS Total_profit
from Premier
group by product_name
order by Total_profit desc;


--Top 10 Customers by sales
select TOP 10
customer_name,
SUM(sales) AS Total_Sale
from Premier
group by customer_name
order by Total_Sale desc;

--Region-wise total sales
select
region,
SUM(sales) AS RegionWise_sale
from Premier
group by region

--Category-Wise average profit
select
category,
round(Avg(profit),2) AS Avg_Profit
from Premier
group by category

--Highest Discount Category
select
category,
round(MAX(discount),2) AS MAX_Discount
from Premier
group by category
order by MAX_Discount


--Orders with negative Profit
select
order_id,
product_name,
round(profit,2) AS Neg_Profit
from Premier
where profit < 0

--Monthly Sales Trend
select
MONTH(order_date) AS Monthh,
SUM(sales) AS Total_sale
from Premier
group by MONTH(order_date)
order by Monthh 


--Market-wise Revenue Analysis
select
market,
SUM(sales) AS Total_Revenue
from Premier
group by market
order by Total_Revenue desc;


--Top-Performing sub-categories
select Top 2
sub_category,
SUM(sales) AS Total_Revenue
from Premier
group by sub_category
order by Total_Revenue desc;


--Ship-mode usage Analysis
select 
ship_mode,
SUM(sales) AS Total_Revenue
from Premier
group by ship_mode
order by Total_Revenue desc;
