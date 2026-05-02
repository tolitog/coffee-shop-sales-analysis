-- Business question: Which coffee do customers order the most?
-- Finding: Americano with Milk leads in order volume — but volume is not the same as profit.

SELECT coffee_name, COUNT(*) AS total_orders
FROM sales
GROUP BY coffee_name
ORDER BY total_orders DESC;
