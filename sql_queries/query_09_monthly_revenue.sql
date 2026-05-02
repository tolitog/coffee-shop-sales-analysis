-- Business question: What does revenue look like month over month across both years?
-- Uses CONCAT and YEAR() to build a readable label like "March 2024".
-- Monthsort preserves correct chronological order across two calendar years —
-- without it, months would sort alphabetically and the timeline would break.

SELECT 
    CONCAT(Month_name, ' ', YEAR(Date)) AS month_label,
    SUM(money) AS total_revenue
FROM sales
GROUP BY month_label, Monthsort
ORDER BY Monthsort;
