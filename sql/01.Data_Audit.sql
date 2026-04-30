use operations_analytics;

-- Total rows
select COUNT(*) as total_row
from dataco_supply_chain;

-- look into data table 
select `Order Id`, Sales, `Order Region`, `Delivery Status`
from dataco_supply_chain
limit 10;

-- Total uniques orders
select count(distinct `Order Id`) as total_order
from dataco_supply_chain;

-- total sales
select ROUND(SUM(Sales),2) as total_sales
from dataco_supply_chain;

-- orders as per delivery
select `Delivery Status`, COUNT(*) as orders
from dataco_supply_chain
group by `Delivery Status` 
order by orders desc;

-- finding table timeline
select 
MIN(`order date (DateOrders)`) as start_date,
MAX(`order date (DateOrders)`) as end_date
from dataco_supply_chain;

-- finding which region have most late delivery
select `Order Region`,
		count(*) as late_orders
from dataco_supply_chain
where `Delivery Status` = "Late delivery"
group by `Order Region`
order by late_orders desc;

-- finding which shipping mode has mote late delivery
select `Shipping Mode`,
		count(*) as late_orders
from dataco_supply_chain
where `Delivery Status` = "Late delivery"
group by  `Shipping Mode`
order by late_orders;