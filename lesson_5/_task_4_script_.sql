WITH cte AS (
	SELECT 
		COUNT(*) as cnt,
		user_id 
	FROM media 
	GROUP BY user_id
)
SELECT 
	cnt,
	user_id,
	email
FROM cte
JOIN users as u on u.id = cte.user_id;