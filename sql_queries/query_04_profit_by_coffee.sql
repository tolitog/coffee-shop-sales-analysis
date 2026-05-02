-- Business question: Which coffee is actually most profitable after subtracting costs?
-- Requires a JOIN with the products table to access cost_to_make per item.
-- Finding: Latte leads in profit. The most ordered item is not the most profitable one.

SELECT sales.coffee_name,
       SUM(money - cost_to_make) AS total_profit
FROM sales
JOIN products ON sales.coffee_name = products.coffee_name
GROUP BY sales.coffee_name
ORDER BY total_profit DESC;
