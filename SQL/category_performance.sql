SELECT
  category,
  ROUND(SUM(sales), 2) AS revenue,
  DENSE_RANK() OVER (ORDER BY SUM(sales) DESC) AS revenue_rank
FROM sales
GROUP BY category;