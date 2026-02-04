-- Write your code here
SELECT sale_id, sale_date, employee_id, region, amount,
    SUM(amount) OVER(PARTITION BY region ORDER BY sale_date, sale_id) AS cumulative_sales
FROM sales
ORDER BY region, sale_date, sale_id