DROP DATABASE adlister_db;

CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username  VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    password VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);

TRUNCATE users;

INSERT INTO users (username, email, password)
VALUES ('Jimbob', 'jimbob@jimbob.com', '12345'),
       ('Bilbo', 'baggins@lotr.com', 'precious');

DROP TABLE IF EXISTS ads;
CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
    ON DELETE CASCADE
);

TRUNCATE ads;

INSERT INTO ads (user_id, title, description)
VALUES (1, 'Honda Civic for sale', 'Very clean garage kept low mileage'),
       (2, 'Ring for sale', 'Ordinary gold 24k ring in good condition'),
       (2, 'Robe for sale', 'Grey robe slightly used smells of magic');