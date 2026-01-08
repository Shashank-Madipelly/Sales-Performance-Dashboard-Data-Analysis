SELECT
  DATE_TRUNC('month', order_date) AS month,
  ROUND(SUM(sales), 2) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;