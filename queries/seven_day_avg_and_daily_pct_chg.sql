WITH cte AS (
    SELECT
        date,
        account_id,
        sum_tasks_used,
        SUM(sum_tasks_used) OVER (PARTITION BY account_id ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS seven_day_running_avg,
        LAG(sum_tasks_used) OVER (PARTITION BY account_id ORDER BY date) AS prev_sum_tasks_used
    FROM public.tasks_used_da
),
     cte2 AS (
         SELECT
             date,
             account_id,
             sum_tasks_used,
             seven_day_running_avg,
             CASE
                 WHEN prev_sum_tasks_used = 0 THEN 0
                 ELSE (sum_tasks_used - prev_sum_tasks_used) / prev_sum_tasks_used
                 END AS percent_change
         FROM cte
     )
SELECT
    date,
    account_id,
    sum_tasks_used,
    seven_day_running_avg,
    percent_change
FROM cte2
ORDER BY date, account_id;