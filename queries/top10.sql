SELECT
    account_id,
    COUNT(DISTINCT user_id) AS num_users
FROM public.tasks_used_da
GROUP BY account_id
ORDER BY num_users DESC
LIMIT 10;