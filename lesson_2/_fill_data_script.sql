USE vk;

INSERT INTO `users` (`id`,`firstname`,`lastname`,`email`,`phone`) VALUES
('1','Reuben','Nienow','arlo50@example.org','9374071116'),
('2','Frederik','Upton','terrence.cartwright@example.org','9127498182'),
('3','Unique','Windler','rupert55@example.org','9921090703'),
('4','Norene','West','rebekah29@example.net','9592139196'),
('5','Frederick','Effertz','von.bridget@example.net','9909791725'),
('6','Victoria','Medhurst','sstehr@example.net','9456642385');

INSERT INTO `media_types` (`id`,`name`,`created_at`) VALUES
('1','media1','2023-10-14 18:47:39'),
('2','media2','2023-10-14 18:47:39'),
('3','media3','2023-10-14 18:47:39'),
('4','media4','2023-10-14 18:47:39'),
('5','media5','2023-10-14 18:47:39'),
('6','media6','2023-10-14 18:47:39');

INSERT INTO `media` (`id`,`media_type_id`,`user_id`,`body`,`filename`,`size`,`metadata`,`created_at`) VALUES
('1','1','1','body 1','video 1','1024','123','2023-10-14 18:47:39'),
('2','2','2','body 2','video 2','1024','123','2023-10-14 18:47:39'),
('3','3','3','body 3','video 3','1024','123','2023-10-14 18:47:39'),
('4','4','4','body 4','video 4','1024','123','2023-10-14 18:47:39'),
('5','5','5','body 5','video 5','1024','123','2023-10-14 18:47:39'),
('6','6','6','body 6','video 6','1024','123','2023-10-14 18:47:39');

INSERT INTO `likes` (`id`,`user_id`,`media_id`,`created_at`) VALUES 
('1','1','1','1988-10-14 18:47:39'),
('2','2','2','1988-09-04 16:08:30'),
('3','3','3','1994-07-10 22:07:03'),
('4','4','4','1991-05-12 20:32:08'),
('5','5','5','1978-09-10 14:36:01'),
('6','6','6','1992-04-15 01:27:31');