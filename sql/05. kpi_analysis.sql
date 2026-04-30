-- Purppose: core business KPI
select 
		COUNT(distinct order_id) 						as total_orders,
		ROUND(SUM(Sales),2) 							as revanue,
		ROUND(SUM(order_profit_per_order),2) 			as total_profit,
		ROUND(SUM(Sales)/COUNT(distinct order_id),2) 	as avg_order_value
from dataco_supply_chain;


-- Purpose: monthly revenue treds
select 
		YEAR(Order_datetime)  as year_num,
		MONTH(order_datetime) as month_num,
		ROUND(SUM(sales),2)   as revenue
from dataco_supply_chain
group by year_num,
		 month_num 
order by year_num,
		 month_num;
