SELECT * FROM maya_life_balance.meals;
INSERT INTO meals (user_id, name, description, category, is_healthy, created_at)
VALUES (1, 'Sayur Kangkung', 'Sayur kangkung membantu melancarkan BAB', 'Breakfast', True, CURRENT_TIMESTAMP),
	   (1, 'Nasi Padang', 'Nasi padang murah, banyak lagi', 'Lunch', True, CURRENT_TIMESTAMP);
 
 UPDATE maya_life_balance.meals
SET Name = 'Burger',
    Description = 'Burger enak banget'
WHERE meal_id = 1;

DELETE FROM maya_life_balance.meals
WHERE meal_id = 1;