USE vk;

ALTER TABLE profiles 
ADD COLUMN is_active BIT DEFAULT 1;

UPDATE profiles
SET is_active = 0
WHERE (birthday + INTERVAL 18 YEAR) > NOW();

select user_id
from profiles
where is_active = 0
order by birthday;

select user_id
from profiles
where is_active = 1
order by birthday;