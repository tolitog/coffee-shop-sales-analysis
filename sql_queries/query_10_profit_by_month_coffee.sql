-- Business question: How do the top and bottom performing items trend over time?
-- Filters to three items: the two highest performers (Latte, Americano with Milk)
-- and the consistent underperformer (Hot Chocolate).
-- Finding: Hot Chocolate's low profit is not seasonal — it stays low every month.

SELECT 
    sales.coffee_name,
    sales.Month_name,
    SUM(sales.money - products.cost_to_make) AS total_profit
FROM sales
JOIN products ON sales.coffee_name = products.coffee_name
WHERE sales.coffee_name IN ('Latte', 'Americano with Milk', 'Hot Chocolate')
GROUP BY sales.coffee_name, sales.Month_name
ORDER BY sales.coffee_name, sales.Monthsort;
