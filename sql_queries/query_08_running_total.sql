-- Business question: How does revenue accumulate across the hours of the day?
-- Uses a window function with SUM OVER ORDER BY to build a running total.
-- Useful for understanding at what point in the day the shop has earned half its daily revenue.

SELECT 
    hour_of_day,
    SUM(money) AS hourly_revenue,
    SUM(SUM(money)) OVER (ORDER BY hour_of_day) AS running_total
FROM sales
GROUP BY hour_of_day
ORDER BY hour_of_day;
