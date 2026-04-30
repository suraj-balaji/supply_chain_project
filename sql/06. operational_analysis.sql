-- Purpose: identify highest volume of late delivery by region
select  order_region,
		COUNT(*) as late_orders
from dataco_supply_chain
where delivery_status = "Late delivery"
group by order_region 
order by late_orders desc
limit 10;

-- identify percentage delay orders by region
select
	order_region,
	count(*) as total_orders,
	SUM(case
			when delivery_status = "late delivery" then 1
			else 0
			end
		) as late_orders,
	SUM(case
			when delivery_status = "late delivery" then 1
			else 0
			end
		) * 100 / count(*) as late_order_pec
from dataco_supply_chain
group by order_region
order by late_order_pec
limit 5;
	
	
-- Purpose: compaire shipping mode causing delay
select  
	shipping_mode,
	count(*) as late_orders
from dataco_supply_chain
where delivery_status = "Late delivery"
group by shipping_mode
order by late_orders desc;

-- Purpose: measure percentage of delayed shippment by shipping mode
select 
	shipping_mode,
	count(*) as total_orders,
	SUM(case
			when delivery_status = "Late delivery" then 1 
			else 0 
			end) as late_orders,
	Round(SUM
			(case 
				when delivery_status = "Late delivery" then 1 
				else 0 
				end
			) *100 / count(*),2) as late_order_pec
from dataco_supply_chain
group by shipping_mode
order by late_order_pec desc;

-- Puposr: Track daley over time
select 
	YEAR(order_datetime) as year_num,
	MONTH(order_datetime) as month_num,
	COUNT(*) as late_orders
from dataco_supply_chain
where delivery_status = "late delivery"
group by year_num,
		 month_num 
order by year_num,
		 month_num;

-- Pupose: Compaire promise vs actual shipping by shipping mode
select
	shipping_mode,
	ROUND(AVG(days_for_shipment_scheduled),2) as avg_promise_days,
	ROUND(AVG(days_for_shipping_real),2) as avg_actual_days,
	ROUND(AVG(days_for_shipment_scheduled - days_for_shipping_real),2) as avg_delay_days
from dataco_supply_chain
group by shipping_mode
order by avg_delay_days desc;

-- Purpodr: check delivery status distrubution by shipping mode
select 
	shipping_mode,
	delivery_status,
	count(*) as total_rows
from dataco_supply_chain
group by shipping_mode,
		 delivery_status
order by shipping_mode,
		 total_rows desc;
			
			
			
	