-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

SELECT Continent, AVG(Population) AS AveragePopulation FROM countries WHERE Population > 10000000 GROUP BY Continent;