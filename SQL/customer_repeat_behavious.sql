SELECT
  customer_id,
  COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;