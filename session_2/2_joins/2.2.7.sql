-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 social.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

SELECT username, COUNT(following_user_id) AS NumberOfFollows FROM users JOIN follows ON users.id = follows.following_user_id GROUP BY username