-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 social.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

SELECT users.username, COUNT(posts.content) AS NumberOfPosts FROM users JOIN posts ON users.id = posts.user_id GROUP BY username;