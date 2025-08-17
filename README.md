# Elevate_Labs_Task6

**Objective**

Analyze monthly revenue and order volume using SQL aggregations.

Dataset

Table: online_sales

Columns: order_id, order_date, amount, product_id

**Tools**

MySQL 

**Steps**

Extracted year and month from order_date.

Calculated monthly revenue using SUM(amount).

Calculated order volume using COUNT(DISTINCT order_id).

Grouped results by year and month.

Sorted by time to observe trends.

**Deliverables**

SQL script (task6_onlinesales.sql)

Results table (screenshot)

README.md (this file)
