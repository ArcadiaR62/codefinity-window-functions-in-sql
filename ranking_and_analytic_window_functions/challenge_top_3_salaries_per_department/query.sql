-- Write your code here
SELECT employee_id, name, department, salary
FROM(
    SELECT employee_id, name, department, salary,
        RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank
    FROM employees
    ) AS rank_data
WHERE rank <= 3
ORDER BY department, salary DESC, name