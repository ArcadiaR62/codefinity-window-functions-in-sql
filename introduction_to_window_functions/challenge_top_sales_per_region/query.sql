-- Write your code here
SELECT region, employee_id, amount
FROM(
    SELECT region, employee_id, amount,
            ROW_NUMBER() OVER(PARTITION BY region ORDER BY amount DESC) AS rn
    FROM sales
    ) AS ranked_sales
WHERE rn = 1