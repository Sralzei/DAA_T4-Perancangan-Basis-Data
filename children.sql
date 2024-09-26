SELECT * FROM maya_life_balance.children;
INSERT INTO maya_life_balance.children (user_id, name, date_of_birth, gender)
VALUES (1, 'Lily', '2018-02-18', 'Female'), 
       (1, 'Leo', '2020-02-18', 'Male');
       
       UPDATE maya_life_balance.children
SET Date_of_birth = '2019-02-18'
WHERE child_id = 1;

DELETE FROM maya_life_balance.children
WHERE child_id = 1;