SQL Queries — Coffee Shop Sales Analysis

These queries were written against a local MariaDB database using DBeaver as part of a full end-to-end analysis of one year of coffee shop transaction data. The database has two tables: sales with 3,547 records spanning March 2024 to March 2025, and products with 8 menu items including a cost-to-make value used for profit calculations.

Every query here is tied to a real business question. The goal was not to demonstrate syntax but to answer something meaningful about the business, then let the data respond.

Concepts covered across all ten queries: SELECT, GROUP BY, ORDER BY, HAVING, JOIN, Subqueries, CTEs, CASE statements, Window Functions, and date and string functions.


Query Index

query_01_basic_select.sql
What does the raw data look like?

query_02_orders_by_coffee.sql
Which coffee do customers order the most?

query_03_revenue_by_coffee.sql
Which coffee generates the most total revenue?

query_04_profit_by_coffee.sql
Which coffee is actually most profitable after subtracting costs?

query_05_above_average_profit.sql
Which coffees beat the average profit across all menu items?

query_06_hourly_vs_average_revenue.sql
Which hours of the day outperform the daily revenue average?

query_07_staffing_labels.sql
When should the shop be fully staffed versus scaled back?

query_08_running_total.sql
How does revenue accumulate across the hours of the day?

query_09_monthly_revenue.sql
What does revenue look like month over month across both years?

query_10_profit_by_month_coffee.sql
How do the top and bottom performing items trend over time?
