-- Purpose: Top Dashborad KPI
select 
	count(distinct order_id) as total_orders,
	round(sum(sales),2) as revenue,
	round(sum(order_profit_per_order),2) as total_profit,
	round(sum(order_profit_per_order) * 100 / sum(sales),2) as profit_margin_pec,
	round(sum(sales) / count(distinct order_id),2) as avg_order_value
from dataco_supply_chain;


-- Purpose: Revenue trend over time
select
    year(order_datetime) as year_num,
    month(order_datetime) as month_num,
    round(sum(Sales),2)as revenue
from dataco_supply_chain
group by year_num, month_num
order by year_num, month_num;


-- Purpose: Revenue by customer segment
select
    customer_segment,
    round(sum(Sales),2) as revenue
from dataco_supply_chain
group by customer_segment
order by revenue desc;


-- Purpose: Delay performance by shipping mode
select 
	shipping_mode,
	round(
		sum(case 
				when delivery_status = "Late delivery" then 1 else 0 end)
		* 100 / count(*),
		2
	) as late_order_pec
from dataco_supply_chain
group by shipping_mode
order by late_order_pec desc;
		

-- Purpose: Most profitable regions
select 
	order_region,
	round(sum(order_profit_per_order),2) as profit
from dataco_supply_chain
group by order_region 
order by profit desc
limit 10;


-- Purpose: top products generating highest profit.
select 
	product_name,
	count(*) as total_rows,
	round(sum(order_profit_per_order),2) as total_profits,
	avg(order_profit_per_order) as avg_profits
from dataco_supply_chain
group by product_name
order by total_profits desc
limit 10;



ALTER USER 'root'@'localhost'
IDENTIFIED WITH mysql_native_password
BY 'yourpassword';

FLUSH PRIVILEGES;