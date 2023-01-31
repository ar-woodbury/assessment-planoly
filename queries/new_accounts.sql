WITH cte AS (SELECT date, account_id, sum_tasks_used, MIN(date) OVER (PARTITION BY account_id) AS first_date
             FROM public.tasks_used_da)
SELECT date, account_id, sum_tasks_used, CASE WHEN date = first_date THEN true ELSE false END AS is_new
FROM cte
GROUP BY date, account_id, first_date, sum_tasks_used
ORDER BY date, account_id;