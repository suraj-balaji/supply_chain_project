-- Rename messy columns for readability
alter table dataco_supply_chain
change column `Days for shipping (real)` days_for_shipping_real int;

alter table dataco_supply_chain
change column `Days for shipment (scheduled)` days_for_shipment_scheduled int;

alter table dataco_supply_chain
change column `Benefit per order` benefit_per_order double;

alter table dataco_supply_chain
change column `Sales per customer` Sales_per_customer double;

alter table dataco_supply_chain
change column `order date (DateOrders)` order_date TEXT;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `shipping date (DateOrders)` shipping_date TEXT;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Shipping Mode` shipping_mode TEXT;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Delivery Status` delivery_status TEXT;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Order Region` order_region TEXT;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Order Profit Per Order` order_profit_per_order DOUBLE;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Order Id` order_id  int;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Order State` order_state  text;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Customer Id` customer_id  int;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Product Name` product_name  text;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Order Status` order_status  text;

ALTER TABLE dataco_supply_chain
CHANGE COLUMN `Order Item Discount Rate` order_item_discount_rate double;

