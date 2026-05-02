-- Business question: When should the shop be fully staffed versus scaled back?
-- Labels each hour as Peak, Normal, or Slow based on how its transaction count
-- compares to the hourly average. Thresholds are 1.5x above and 0.5x below average.
-- Finding: 10AM is the Peak hour. This directly supports scheduling decisions.

WITH hourly_transactions AS (
    SELECT hour_of_day,
           COUNT(*) AS transaction_count
    FROM sales
    GROUP BY hour_of_day
),
avg_transactions AS (
    SELECT AVG(transaction_count) AS avg_count
    FROM hourly_transactions
)
SELECT 
    h.hour_of_day,
    h.transaction_count,
    ROUND(a.avg_count, 2) AS avg_transactions,
    CASE 
        WHEN h.transaction_count > a.avg_count * 1.5 THEN 'Peak'
        WHEN h.transaction_count < a.avg_count * 0.5 THEN 'Slow'
        ELSE 'Normal'
    END AS staffing_label
FROM hourly_transactions h, avg_transactions a
ORDER BY h.hour_of_day;
