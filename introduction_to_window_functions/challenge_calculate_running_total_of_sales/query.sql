-- Write your code here
SELECT sale_id,
    sale_date,
    employee_id,
    amount,
    SUM(amount) OVER(PARTITION BY employee_id 
                    ORDER BY employee_id, sale_date, sale_id) AS running_total
FROM sales
ORDER BY employee_id, sale_date, sale_id