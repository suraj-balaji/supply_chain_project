-- checking data quality

-- Purpose: Confirms total imported records
select count(*) as total_rows
from dataco_supply_chain;

-- Purpose: Count repeated order ids (multiple line item may exist)
select 
		count(*) as total_rows,
		count(distinct order_id) as unique_orders
from dataco_supply_chain;

-- purpose: checking missing sales value
select count(*) as missing_sales_row
from dataco_supply_chain
where sales is null;

-- Purpose: find row where converted datetime missing
select count(*) as missing_order_datetime
from dataco_supply_chain
where order_datetime is null;

-- Purpose: review min and max sales value
select 
		MIN(sales) as min_sales,
		MAX(sales) as max_sales
from dataco_supply_chain;

-- Purpose: review min and max profit value
select 
		MIN(order_profit_per_order) as min_profit,
		MAX(order_profit_per_order) as max_profit
from dataco_supply_chain;

-- check duplicate order-product combination
select order_id,
	   `Order Item Cardprod Id`,
	   count(*) as row_count
from dataco_supply_chain
group by order_id,
		 `Order Item Cardprod Id` 
HAVING count(*) > 1
limit 20;

-- Purpose: avg item per order
select 
		round(count(*)/count(distinct order_id),2) as avg_row_per_order
from dataco_supply_chain;

-- inspect repeated order product row
select order_id,
		`Order Item Cardprod Id`,
		`Order Item Quantity`,
		Sales,
		order_profit_per_order
from dataco_supply_chain
where order_id = 50054;

-- Potential repeated order-product rows detected. Requires business validation.