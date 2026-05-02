# Coffee Shop Sales Analysis: From Raw Data to Business Insights

## Dashboard Preview

![Dashboard 1](DASHBOARD%201.png)
![Dashboard 2](DASHBOARD%202.png)
![Dashboard 3](DASHBOARD%203.png)

## Overview

This project is an end-to-end data analytics case study using a year of real coffee shop transaction data, from March 2024 to March 2025. Starting from a raw CSV file with 3,547 records, I cleaned the data in Python, analyzed it in SQL, and visualized the results in Google Looker Studio.

Note: The cost-to-make values used in the profit analysis were created for the purpose of this exercise and do not reflect the actual costs of the real coffee shop. They were introduced specifically to demonstrate how profitability differs from order volume.

## What I Found

The most interesting finding was that the most ordered coffee is not the most profitable one. Americano with Milk leads in order volume, but Latte generates more revenue and more profit after subtracting costs.

Hot Chocolate fails every cut of the data. Low orders, low revenue, low profit. The recommendation is to investigate before investing in promotion, or consider pulling it from the menu entirely.

On the operations side, 10AM is the peak hour with a secondary spike at 4PM. Revenue is evenly split across morning, afternoon, and evening shifts — meaning consistent staffing makes more sense than skewing toward any one daypart.

## How I Built It

I started with a health check in Python before touching anything else. The dataset had a subtle but critical issue — the month sorting column tracked month numbers without year, making chronological order impossible until I fixed it. That's why I always verify before analyzing.

Business analysis was done in SQL through DBeaver connected to a local MariaDB database. Queries covered aggregations, JOINs, subqueries, CTEs, CASE statements, and window functions — each one tied to a real business question.

The dashboard was built in Google Looker Studio across three pages. Business overview on page one, menu item performance on page two, and sales distribution on page three. Two versions of the final numbers exist because I caught an error halfway through and corrected it retroactively.

## How the Data Reaches the Dashboard

After cleaning in Python, the final dataset was exported as a CSV and uploaded to Google Sheets. Looker Studio was then connected directly to that Sheets file as its data source. This setup was a practical choice — it keeps the source of truth in one place and makes updates simple.

## Tools Used

- **SQL** through MariaDB and DBeaver
- **Python** with Pandas
- **Google Looker Studio** for dashboards
- **Google Sheets** for data storage

## Dashboard

**View the interactive dashboard here:** https://datastudio.google.com/reporting/46c35229-e39f-4769-bd7c-0f24d4d13bfd

## About

Computer Science student in the Philippines, building toward entry-level data analyst roles. My approach is business reasoning first — I use AI for syntax and focus my energy on interpreting what the data is actually telling me about the business.
