SELECT * FROM maya_life_balance.users;
INSERT INTO maya_life_balance.users (username, password, email, full_name, date_of_birth, created_at)
VALUES ('Maya', 'mayacantik123', 'mayacantik@gmail.com', 'Maya Bengkel', '1987-02-18', CURRENT_TIMESTAMP);

UPDATE maya_life_balance.users
SET Email = 'mayabo@gmail.com'
WHERE user_id = 1;

DELETE FROM maya_life_balance.users
WHERE user_id = 1;