WITH cte AS (
	SELECT 
		COUNT(*) as news_count,
		user_id 
	FROM media 
	GROUP BY user_id
)
SELECT 
	news_count,
	user_id,
	email
FROM cte
JOIN users as u on u.id = cte.user_id;