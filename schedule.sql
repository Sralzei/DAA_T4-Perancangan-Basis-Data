SELECT * FROM maya_life_balance.schedules;
INSERT INTO maya_life_balance.schedules (user_id, title, description, start_time, end_time, category)
VALUES 
(1, 'Jogging', 'Lari Pagi biar sehat', '2024-09-27 06:00:00', '2024-09-27 07:00:00', 'Health'),
(1, 'Nonton Anime Classroom of The Elite', 'Melatih Kecerdasan serta pola pikir', '2024-09-27 14:00:00', '2024-09-27 17:00:00', 'Personal');

UPDATE maya_life_balance.schedules
SET Title = 'Swimming',
    Description = 'Workout everyday'
WHERE schedule_id = 1;

DELETE FROM maya_life_balance.schedules
WHERE schedule_id = 1;