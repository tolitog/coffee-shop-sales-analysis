

Coffee Shop Sales Analysis: From Raw Data to Business Insights

Overview

This project is an end-to-end data analytics case study using a year of real coffee shop transaction data, from March 2024 to March 2025. Starting from a raw CSV file with 3,547 records, I cleaned the data, ran business queries in SQL, and built a three-page interactive dashboard — all driven by actual business questions rather than textbook exercises.

Note: The cost-to-make values used in the profit analysis were created for the purpose of this exercise and do not reflect the actual costs of the real coffee shop. They were introduced specifically to practice JOIN operations, profit calculations, and multi-metric analysis. All revenue figures are from the original dataset and are real.

What I Found

The most interesting finding was that the most ordered coffee is not the most profitable one. Americano with Milk leads in order volume, but Latte generates more revenue and more profit after subtracting the cost to make each drink. If the owner's goal is profit, the data says promote Latte — not the drink customers already default to.

Hot Chocolate fails every cut of the data. Low orders, low revenue, low profit. The recommendation is to investigate before investing in promotion, or consider pulling it from the menu entirely.

On the operations side, 10AM is the peak hour with a secondary spike at 4PM. Revenue is evenly split across morning, afternoon, and evening shifts — meaning consistent staffing makes more sense than concentrating staff during one period. Tuesday is the highest-grossing day of the week, which is a non-obvious finding worth the owner's attention.

How I Built It

I started with a health check in Python before touching anything else. The dataset had a subtle but critical issue — the month sorting column tracked month numbers without year, making chronological charts impossible across two calendar years. I corrected this before loading anything into the dashboard. Column headers also contained hidden non-breaking space characters from the original data source, which broke column matching in code. Both were fixed and documented.

Business analysis was done in SQL through DBeaver connected to a local MariaDB database. Queries covered aggregations, JOINs, subqueries, CTEs, CASE statements, and window functions — each one tied to a real business question about the coffee shop.

The dashboard was built in Google Looker Studio across three pages. Business overview on page one, menu item performance on page two, and sales distribution on page three. Two versions of the final report exist — a clean data version and an insight-led version with observations and recommendations.

Tools Used

SQL through MariaDB and DBeaver, Python with Pandas, Google Looker Studio, Google Sheets

Dashboard

View the interactive dashboard here: [https://datastudio.google.com/reporting/46c35229-e39f-4769-bd7c-0f24d4d13bfd]

About

Computer Science student in the Philippines, building toward entry-level data analyst roles. My approach is business reasoning first — I use AI for syntax and focus my energy on interpreting what the numbers actually mean for real decisions.
