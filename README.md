# 🚚 Supply Chain Analysis (SQL + Power BI)

## 1. Business Problem

Modern supply chain operations face challenges such as:

* Late deliveries
* Shipping inefficiencies
* Regional performance gaps
* Operational delays
* Reduced customer satisfaction

The company needed a centralized analytics solution to monitor operational performance, identify bottlenecks, and improve delivery efficiency using data-driven insights.

---

# 2. Project Objective

The objective of this project was to analyze supply chain and order fulfillment data to:

* Track operational KPIs
* Measure delivery performance
* Identify causes of shipment delays
* Analyze regional and category-level performance
* Improve logistics decision-making through interactive dashboards

The project combines SQL-based data preparation with Power BI dashboards to simulate a real-world supply chain analytics workflow.

---

# 3. Dataset Overview

The dataset contains supply chain transaction data including:

* Orders
* Shipping information
* Customers
* Products
* Regions
* Sales & Profit metrics

### Key Business Areas Covered:

* Order Management
* Shipping Performance
* Profitability
* Regional Analysis
* Delivery Efficiency

### Example Columns:

* Order Date
* Shipping Date
* Delivery Status
* Product Category
* Sales
* Profit
* Region
* Customer Segment

---

# 4. Tools & Technologies

| Tool        | Purpose                               |
| ----------- | ------------------------------------- |
| SQL (MySQL) | Data cleaning & transformation        |
| DBeaver     | SQL query execution                   |
| Power BI    | Dashboard development & visualization |
| Excel/CSV   | Data storage & export                 |

### SQL Concepts Used:

* Joins
* CTEs
* Aggregations
* Window Functions
* Date Functions
* Indexing
* Derived Columns

---

# 5. Data Cleaning Process

The dataset was cleaned and validated using SQL before loading into Power BI.

### Cleaning Steps Performed:

* Removed duplicate records
* Validated relationships between tables
* Handled null and missing values
* Standardized column formats
* Converted date fields into proper date formats
* Created calculated columns:

  * Delivery Days
  * Late Delivery Flag
  * Processing Time

### Performance Optimization:

* Added indexes to improve query execution speed
* Created structured views for reporting

---

# 6. KPI Definitions

| KPI                   | Definition                             |
| --------------------- | -------------------------------------- |
| Total Orders          | Total number of orders processed       |
| Total Revenue         | Total sales generated                  |
| Total Profit          | Total operational profit               |
| Profit Margin         | Profit percentage from revenue         |
| Late Deliveries       | Orders delivered after expected date   |
| On-Time Delivery Rate | Percentage of orders delivered on time |
| Average Delivery Time | Average shipping duration              |

---

# 7. Dashboard Overview

The Power BI dashboard was designed for operational managers and business stakeholders.

### Dashboard Pages Included:

## 📊 Executive Overview

* Revenue
* Profit
* Orders
* Margin
* Revenue trends

## 🚚 Delivery Performance

* Late vs On-Time Deliveries
* Shipping trends
* Delivery performance by region

## 🌍 Regional Analysis

* Revenue & Profit by region
* Regional operational efficiency

## 📦 Product & Segment Analysis

* Category performance
* Customer segment contribution

---

# 8. Key Insights

### 🚨 Delivery Performance

* A significant number of shipments were delivered late.
* Certain regions consistently underperformed in delivery timelines.

### 📈 Revenue & Profitability

* Revenue was concentrated in a few product categories.
* Some regions generated strong sales but low profitability.

### 📦 Operational Findings

* Delivery delays increased during high-order periods.
* Operational inefficiencies impacted customer fulfillment speed.

---

# 9. Root Cause Analysis

Several factors contributed to operational inefficiencies:

| Issue                    | Possible Cause              |
| ------------------------ | --------------------------- |
| High late delivery rate  | Poor route planning         |
| Low regional performance | Resource imbalance          |
| Slow fulfillment         | Warehouse processing delays |
| Reduced profitability    | High shipping cost          |

The analysis indicates that logistics optimization and operational planning require improvement.

---

# 10. Business Recommendations

### 🚚 Improve Delivery Operations

* Optimize shipping routes
* Improve warehouse processing workflows
* Monitor late deliveries in real time

### 📊 Regional Optimization

* Allocate resources to underperforming regions
* Improve regional inventory management

### 💰 Profitability Improvements

* Focus on high-margin product categories
* Reduce unnecessary shipping costs

### 📈 KPI Monitoring

* Implement operational KPI tracking dashboards for management teams

---

# 11. Expected Business Impact

Implementing the recommendations can lead to:

* Reduced delivery delays
* Improved customer satisfaction
* Faster operational response
* Better resource allocation
* Increased profitability
* Improved supply chain visibility

### Potential Long-Term Impact:

* Higher customer retention
* Lower operational costs
* Improved logistics efficiency

---

# 12. Future Improvements

Future enhancements for this project may include:

* Real-time supply chain monitoring
* Predictive delivery delay forecasting
* Inventory optimization analysis
* Supplier performance tracking
* Advanced logistics KPI forecasting
* Integration with live databases/APIs

---

# 📊 Dashboard Preview
<img width="598" height="340" alt="supply_chain_dashboard_screenshot" src="https://github.com/user-attachments/assets/51de3e24-8567-4ef4-99c2-e433f1b42d2c" />

---
## Files Included
sql/ </br>
data/ </br>
powerbi/ </br>
docs/ </br>
images/ </br>
README.md

---

# 👤 Author

Suraj Balaji Bhagaye </br>
bhagayesuraj@gmail.com

Data Analytics | SQL | Power BI | Business Intelligence

