WITH cte AS (
    SELECT
        date,
        account_id,
        sum_tasks_used
    FROM public.tasks_used_da
    WHERE date BETWEEN '2017-02-01' AND '2017-02-28'
),
     cte2 AS (
         SELECT DISTINCT account_id
         FROM cte
     )
SELECT
    COUNT(*) AS total_lost_accounts
FROM public.tasks_used_da
WHERE date BETWEEN '2017-01-01' AND '2017-01-31'
  AND account_id NOT IN (SELECT account_id FROM cte2);