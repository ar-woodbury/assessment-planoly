SELECT
    account_id,
    date,
    sum_tasks_used,
    AVG(sum_tasks_used) OVER (PARTITION BY account_id ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS seven_day_running_average
FROM
    public.tasks_used_da;
