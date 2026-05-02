-- Business question: Which coffees beat the average profit across all menu items?
-- Uses a subquery inside HAVING to calculate the average profit dynamically at runtime.

SELECT sales.coffee_name,
       SUM(money - cost_to_make) AS total_profit
FROM sales
JOIN products ON sales.coffee_name = products.coffee_name
GROUP BY sales.coffee_name
HAVING total_profit > (
    SELECT SUM(money - cost_to_make) / COUNT(DISTINCT sales.coffee_name)
    FROM sales
    JOIN products ON sales.coffee_name = products.coffee_name
);
