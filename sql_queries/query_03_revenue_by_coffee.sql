-- Business question: Which coffee generates the most total revenue?
-- Finding: Latte outperforms Americano with Milk in revenue despite having fewer orders.

SELECT coffee_name, SUM(money) AS total_revenue
FROM sales
GROUP BY coffee_name
ORDER BY total_revenue DESC;
