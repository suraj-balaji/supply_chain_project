-- Purpose: compare total profit across region
select 
	order_region,
	round(sum(order_profit_per_order),0) as total_profit
from dataco_supply_chain
group by order_region
order by total_profit desc;

-- Purpose: identify region with weakest profotability
select 
	order_region,
	round(sum(order_profit_per_order),0) as total_profit
from dataco_supply_chain
group by order_region
order by total_profit asc
limit 10;

-- Purpose: count order with nagetive profit
select
	count(*) as lass_orders
from dataco_supply_chain
where order_profit_per_order < 0;

-- Purpose: total count loss order percentage 
select
	sum(case when order_profit_per_order < 0 then 1 else 0 end) as loss_orders,
	round(sum(case when order_profit_per_order < 0 then 1 else 0 end) * 100 / count(*),1) as loss_order_pec
from dataco_supply_chain;


-- Purpose: compaire shipping mode profits
select
	shipping_mode,
	round(sum(order_profit_per_order),2) as total_profit,
	round(avg(order_profit_per_order),2) as avg_profit
from dataco_supply_chain
group by shipping_mode
order by total_profit desc;

-- Purpose: categories discount first then check if high discount reduce profit
with discount_data as (
	select
		order_profit_per_order,
		case 
			when order_item_discount_rate = 0 then '0%'
			when order_item_discount_rate <= 0.10 then '1-10%'
			when order_item_discount_rate <=0.20 then '11-20%'
			else '20%+'
		end as discount_band
	from dataco_supply_chain
)
	select
		discount_band,
		count(*) as total_row,
		round(avg(order_profit_per_order),2) as avg_profit
from discount_data
group by discount_band
order by avg_profit desc;


-- Purpose: findling products generating highest profit.
select 
	product_name,
	count(*) as total_rows,
	round(sum(order_profit_per_order),2) as total_profits,
	avg(order_profit_per_order) as avg_profits
from dataco_supply_chain
group by product_name
order by total_profits desc
limit 10;

-- Purpose: product with weakest profitability.
select 
	product_name,
	count(*) as total_rows,
	round(sum(order_profit_per_order),2) as total_profits,
	avg(order_profit_per_order) as avg_profits
from dataco_supply_chain
group by product_name
order by total_profits asc
limit 10;

-- Purpose: Products generating highest revenue
select 
	product_name,
	round(sum(sales),2) as total_revenue
from dataco_supply_chain
group by product_name
order by total_revenue desc
limit 10;

-- Purpose: compare products by revenue and profits
select 
	product_name,
	round(sum(sales),2) as revenue,
	round(sum(order_profit_per_order),2) as profit,
	round(sum(order_profit_per_order) * 100 / sum(sales),2) as profit_margin_pec
from dataco_supply_chain
group by product_name
order by profit desc
limit 10;

-- Purpose: products with strong sales but weak margin
select 
	product_name,
	round(sum(sales),2) as revenue,
	round(sum(order_profit_per_order),2) as profit,
	round(sum(order_profit_per_order) * 100 / sum(sales),2) as profit_margin_pec
from dataco_supply_chain
group by product_name
having sum(sales) > 50000
order by profit_margin_pec asc
limit 10;