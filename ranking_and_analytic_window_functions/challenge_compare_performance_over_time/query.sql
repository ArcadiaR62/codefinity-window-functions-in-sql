-- Write your code here
SELECT e.employee_id, e.name, p.review_date, p.score,
    p.score - LAG(p.score) OVER(PARTITION BY e.employee_id ORDER BY p.review_date) AS score_difference
FROM employees e
LEFT JOIN performance p ON p.employee_id = e.employee_id 
ORDER BY e.employee_id, p.review_date