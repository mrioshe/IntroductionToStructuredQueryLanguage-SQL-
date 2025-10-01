CREATE DATABASE your_database_name
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

CREATE TABLE Ages ( 
  name VARCHAR(128), 
  age INTEGER
);

DELETE FROM Ages;
INSERT INTO Ages (name, age) VALUES ('Alissa', 28);
INSERT INTO Ages (name, age) VALUES ('Leonah', 15);
INSERT INTO Ages (name, age) VALUES ('Devan', 40);
INSERT INTO Ages (name, age) VALUES ('Vanessa', 39);
INSERT INTO Ages (name, age) VALUES ('Aine', 28);

SELECT sha1(CONCAT(name,age)) AS X FROM Ages ORDER BY X;