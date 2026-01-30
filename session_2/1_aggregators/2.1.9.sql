-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

SELECT Continent, AVG(LiteracyPercent) AS AverageLiteracyPercent FROM countries GROUP BY Continent ORDER BY AverageLiteracyPercent ASC