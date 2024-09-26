use maya_life_balance;

-- Table user 
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabel Anak
CREATE TABLE children (
    child_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Tabel Jadwal
CREATE TABLE schedules (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    category ENUM('Work', 'Family', 'Personal', 'Health') NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Tabel Makanan
CREATE TABLE meals (
    meal_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    category ENUM('Breakfast', 'Lunch', 'Dinner', 'Snack') NOT NULL,
    is_healthy BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

use maya_life_balance;
CREATE VIEW user_summary AS
SELECT 
    u.user_id, 
    u.username, 
    u.email, 
    u.full_name, 
    (SELECT COUNT(*) FROM children c WHERE c.user_id = u.user_id) AS total_children,
    (SELECT COUNT(*) FROM schedules s WHERE s.user_id = u.user_id) AS total_schedules,
    (SELECT COUNT(*) FROM meals m WHERE m.user_id = u.user_id) AS total_meals
FROM users u;