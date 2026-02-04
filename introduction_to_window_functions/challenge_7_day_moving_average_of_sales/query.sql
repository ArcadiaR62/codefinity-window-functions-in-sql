-- Write your code here
SELECT sale_id, sale_date, employee_id, amount,
       AVG(amount) OVER (PARTITION BY employee_id
            ORDER BY sale_date
            ROWS BETWEEN 7 PRECEDING AND CURRENT ROW) AS moving_avg_7d
FROM sales