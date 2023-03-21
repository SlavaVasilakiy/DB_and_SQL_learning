SELECT gender, COUNT(gender)
FROM profiles
WHERE user_id IN (
  SELECT user_id
  FROM likes)
GROUP BY gender 
LIMIT 1;