-- Business question: Which hours of the day outperform the daily revenue average?
-- Uses two CTEs — one to calculate hourly totals, one to establish the daily average baseline.
-- The difference column shows how far above or below average each hour lands.

WITH hourly_revenue AS (
    SELECT hour_of_day,
           SUM(money) AS total_revenue
    FROM sales
    GROUP BY hour_of_day
),
daily_average AS (
    SELECT SUM(money) / COUNT(DISTINCT hour_of_day) AS avg_revenue
    FROM sales
)
SELECT 
    hourly_revenue.hour_of_day,
    hourly_revenue.total_revenue,
    daily_average.avg_revenue,
    hourly_revenue.total_revenue - daily_average.avg_revenue AS difference
FROM hourly_revenue, daily_average
ORDER BY hourly_revenue.hour_of_day;
