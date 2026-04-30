-- Purpose: check customer related column
describe dataco_supply_chain;

-- Purpose: compare revenue by customer segment
select 
	customer_segment,
	round(sum(sales),2) as revenue,
	count(distinct customer_id) as customers
from dataco_supply_chain
group by customer_segment 
order by revenue desc;

-- Purpose: compare profit by customer segment
select 
	customer_segment,
	round(sum(order_profit_per_order),2) as profits
from dataco_supply_chain
group by customer_segment 
order by profits desc;

-- Purpose: compare avg order value by segment
select 
	customer_segment,
	round(
			sum(sales) / count(distinct order_id),
		  2) as avg_order_value
from dataco_supply_chain
group by customer_segment 
order by avg_order_value desc;

-- Purpose: Identify highest revenur customer
select 
	customer_id,
	round(sum(sales),2) as revenue,
	count(distinct order_id) as total_order
from dataco_supply_chain
group by customer_id 
order by revenue desc
limit 10;

-- Purpose: customer with multiple orders
select 
	customer_id,
	count(distinct order_id) as total_orders
from dataco_supply_chain
group by customer_id 
having count(distinct order_id) > 1
order by total_orders desc
limit 10;

-- Purpose: compare revenue and profit per customer by segment
select 
	customer_segment,
	round(sum(sales)/count(distinct customer_id),2) as revenue_per_customer,
	round(sum(order_profit_per_order) / count(distinct customer_id),2) as profit_per_customer
from dataco_supply_chain
group by customer_segment
order by profit_per_customer desc;


-- Purpose: real repeat customer by segment
select 
	customer_segment,
	count(*) as repeat_customer
from (
		select 
			customer_id,
			customer_segment,
			count(distinct order_id) as total_orders
		from dataco_supply_chain
		group by customer_id, 
				 customer_segment 
		having count(distinct order_id) > 1
	 ) t
group by customer_segment 
order by repeat_customer desc;
