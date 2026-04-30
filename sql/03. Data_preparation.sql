-- checking the dates datatypes

select order_date
from dataco_supply_chain;

select shipping_date
from dataco_supply_chain;

-- create new colume for order and shipping date 

alter table dataco_supply_chain
add column order_datetime DATETIME;

alter table dataco_supply_chain
add column shipping_datetime DATETIME;

-- conver raw text datatype to date datatype

update dataco_supply_chain
set order_datetime = STR_TO_DATE(order_date, '%m/%d/%Y %H:%i');

update dataco_supply_chain
set shipping_datetime = STR_TO_DATE(shipping_date, '%m/%d/%Y %H:%i') 

-- verifying date type changes
select order_date, 
		order_datetime
from dataco_supply_chain
limit 5;

select shipping_date,
		shipping_datetime
from dataco_supply_chain
limit 5;