-- Write your code here
SELECT m.employee_id, m.name, 
        m.avg_score,
        NTILE(4) OVER (ORDER BY avg_score DESC) AS performance_quartile
FROM (SELECT e.employee_id, e.name, 
        AVG(p.score) AS avg_score
        FROM employees e LEFT JOIN performance p ON p.employee_id = e.employee_id
        GROUP BY e.employee_id) AS m
