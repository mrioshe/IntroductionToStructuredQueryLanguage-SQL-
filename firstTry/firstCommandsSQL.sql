INSERT INTO Users (name,email) VALUES ('Ted', 'ted@umich.edu');
DELETE FROM Users WHERE EMAIL='ted@umich.edu'
UPDATE users SET name='Charles' WHERE email='csev@umich.edu';
SELECT * FROM users; 
SELECT * FROM users WHERE email='csev@umich.edu';
SELECT * FROM users WHERE name='Alex';
SELECT * FROM users ORDER BY email;
SELECT * FROM users where name like '%e%';
SELECT * FROM users ORDER BY email DESC limit 2;
SELECT * FROM users ORDER BY email DESC limit 1,2;
SELECT COUNT(*) FROM  Users;
SELECT COUNT(*) FROM Users WHERE email='csev@umich.edu'
