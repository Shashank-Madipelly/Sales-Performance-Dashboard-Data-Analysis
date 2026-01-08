select count(*) as total_rows from sale;

SELECT
  MIN(order_date) AS start_date,
  MAX(order_date) AS end_date
FROM sales;

select count(*) filter (where sales is null) as null_sales,
 count(*) filter (where profit is null) as null_profit
from sales;
