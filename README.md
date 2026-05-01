Coffee Shop Sales Analysis: A Case Study in Business Intelligence

Project Overview
This project presents an end-to-end data analytics workflow utilizing a year-long dataset from a retail coffee environment, spanning from March 2024 through March 2025. The analysis was conducted to transform a raw transaction log of 3,547 records into a series of actionable business recommendations. By integrating SQL for data extraction and Python for preprocessing, the project culminates in a multi-page interactive dashboard designed to support executive decision-making.

Strategic Findings
The analysis identified a significant discrepancy between product popularity and profitability. While the Americano with Milk was identified as the highest-volume product, the Latte was determined to be the primary driver of both total revenue and net profit. This suggests that current consumer trends naturally favor the Americano, whereas business growth should be targeted toward the Latte through strategic promotion.

Operational data revealed consistent peaks in traffic at 10:00 AM and 4:00 PM, with revenue distribution remaining remarkably balanced across morning, afternoon, and evening shifts. Notably, Tuesday was identified as the highest-grossing day of the week, outperforming both the Monday morning rush and weekend sales. Conversely, Hot Chocolate was noted as a consistent underperformer across all key performance indicators, suggesting a need for menu re-evaluation.

Technical Methodology
The technical framework was divided into three distinct phases: data engineering, database management, and visualization.

Data Engineering and Preprocessing
Initial data health checks were performed using Python and the Pandas library. A critical sorting issue was identified where the original dataset utilized a month-only index (1-12) without year attribution. Because the data spanned two calendar years, this structure caused chronological overlapping. The data was re-engineered into a YYYYMM format to ensure accurate time-series analysis. Additionally, hidden non-breaking space characters in the schema—common in web-scraped data—were identified and sanitized to ensure code stability.

Database Management
Following the cleaning process, the data was hosted in a MariaDB environment. Business-specific queries were executed using DBeaver to perform complex aggregations. The SQL workflow utilized Common Table Expressions (CTEs), window functions, and case statements to calculate advanced metrics such as month-over-month growth and profit margins per unit.

Visualization and Dashboard Design
The final deliverable was constructed in Google Looker Studio, organized into three functional reporting pages:
1. Business Summary: High-level revenue trends and transaction volume.
2. Menu Performance: Comparative analysis of product profitability versus volume.
3. Sales Distribution: Operational insights into time-of-day and day-of-week trends.

Conclusion
This project demonstrates the transition from raw data collection to professional business intelligence. The methodology prioritizes analytical reasoning over simple reporting, ensuring that every visualization serves a specific operational purpose. By providing two versions of the final report—a standard dashboard and an insight-led executive summary—the project highlights the value of the analyst in interpreting data for real-world application.
