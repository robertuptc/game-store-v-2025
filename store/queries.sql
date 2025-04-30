-- ##### SCENARIO 1 #####
-- Retrieve the names of all gaming engines.
-- SELECT engine_name FROM gaming_engine;

-- ##### SCENARIO 2 #####
-- Find the total quantity of all games in stock.
-- SELECT SUM(quantity) FROM game;

-- ##### SCENARIO 3 #####
-- Get the unique titles of all games with a price higher than $30.00.
-- SELECT DISTINCT game_title FROM game WHERE price > 30;

-- ##### SCENARIO 4 #####
-- List the titles and quantities of games with less than 10 in stock.
-- SELECT game_title, quantity FROM game WHERE quantity < 10;

-- ##### SCENARIO 5 #####
-- Find the total number of genre-game associations.
-- SELECT g.genre_name, COUNT(gg.genre_id) 
-- FROM genre g
-- JOIN genre_game gg ON g.genre_id = gg.genre_id
-- GROUP BY g.genre_name;

-- ##### SCENARIO 6 #####
-- Retrieve the titles of action figures with a price between $20.00 and $50.00.
-- SELECT action_figure_title, price FROM action_figure WHERE price BETWEEN 20 AND 50;

-- ##### SCENARIO 7 #####
-- List the poster titles and prices for posters with quantities between 15 and 30.
-- SELECT poster_title, price from poster WHERE quantity BETWEEN 15 AND 30;

-- ##### SCENARIO 8 #####
-- Get the names and positions of employees earning more than $40,000 per year.
-- SELECT employee_name, position FROM employee WHERE salary > 40000;

-- ##### SCENARIO 9 #####
-- Find the total number of social security entries.
-- SELECT COUNT(*) FROM social_security;

-- ##### SCENARIO 10 #####
-- Retrieve the start and end times of all shifts.
-- SELECT start_time, end_time FROM shifts;

-- ##### SCENARIO 11 #####
-- Get the names and salaries of employees working on shifts.
-- SELECT e.employee_name, e.salary
-- FROM employee e
-- JOIN shifts s ON e.id = s.id;

-- ##### SCENARIO 12 #####
-- List the action figures with a quantity less than 5.
-- SELECT action_figure_title FROM action_figure WHERE quantity < 5;

-- ##### SCENARIO 13 #####
-- Retrieve the titles of games with the word 'Warzone' in their title.
-- SELECT game_title FROM game WHERE game_title LIKE '%Warzone';

-- ##### SCENARIO 14 #####
-- Find the total number of genres.
-- SELECT COUNT(*) AS total_genres FROM genre;

-- ##### SCENARIO 15 #####
-- Get the names and quantities of action figures with prices over $75.00.
-- SELECT action_figure_title, quantity FROM action_figure WHERE price > 75;

-- ##### SCENARIO 16 #####
-- Retrieve the names of employees in the 'IT Specialist' position.
-- SELECT employee_name FROM employee WHERE position = 'IT Specialist';

-- ##### SCENARIO 17 #####
-- List the game titles with quantities greater than 25.
-- SELECT game_title FROM game WHERE quantity > 25;

-- ##### SCENARIO 18 #####
-- Find the total quantity of all items (games, action figures, and posters).
-- SELECT
-- (SELECT SUM(quantity) FROM game) +
-- (SELECT SUM(quantity) FROM action_figure) +
-- (SELECT SUM(quantity) FROM poster) 

-- ##### SCENARIO 19 #####
-- Retrieve the social security numbers and names of employees with salaries over $50,000.
-- SELECT e.employee_name, ss.ssn FROM employee e
-- JOIN social_security ss ON e.id = ss.id
-- WHERE e.salary > 50000;

-- ##### SCENARIO 20 #####
-- Get the names and quantities of posters with prices between $10.00 and $15.00.
-- SELECT poster_title, quantity FROM poster WHERE price BETWEEN 10 AND 15;

-- ##### SCENARIO 21 #####
-- List the names and quantities of posters with a price less than $8.00.
-- SELECT poster_title, quantity FROM poster WHERE price < 8;

-- ##### SCENARIO 22 #####
-- Retrieve the employee names and salaries for 'Marketing Coordinator' and 'Finance Analyst' positions.
-- SELECT employee_name, salary FROM employee WHERE position IN ('Marketing Coordinator', 'Finance Analyst');

-- ##### SCENARIO 23 #####
-- Find the total quantity of action figures in stock.
-- SELECT SUM(quantity) FROM action_figure;

-- ##### SCENARIO 24 #####
-- Get the titles and quantities of games with a quantity between 15 and 30.
-- SELECT game_title, quantity FROM game WHERE quantity BETWEEN 15 AND 30;

-- ##### SCENARIO 25 #####
-- List the names and salaries of employees working on shifts with a start time after '2024-01-01'.
-- SELECT e.employee_name, e.salary, s.start_time 
-- FROM employee e
-- LEFT JOIN shifts s ON e.id = s.employee_id
-- WHERE s.start_time::DATE > '2024-01-01';

-- ##### SCENARIO 26 #####
-- Retrieve the titles and prices of games with prices less than $20.00.
-- SELECT price, game_title FROM game WHERE price < 20;

-- ##### SCENARIO 27 #####
-- Find the total quantity of action figures with prices between $30.00 and $50.00.
-- SELECT SUM(quantity) FROM action_figure WHERE price BETWEEN 30 AND 50;

-- ##### SCENARIO 28 #####
-- Get the names and positions of employees working on shifts with a start time before '2024-03-01'.
-- SELECT e.employee_name, e.position, s.start_time::DATE FROM employee e
-- LEFT JOIN shifts s ON e.id = s.employee_id
-- WHERE s.start_time < '2024-03-01'; 

-- ##### SCENARIO 29 #####
-- List the names and quantities of action figures with a quantity greater than 10.
-- SELECT action_figure_title, quantity FROM action_figure WHERE quantity > 10;

-- ##### SCENARIO 30 #####
-- Retrieve the titles and quantities of posters with quantities greater than 25.
-- SELECT poster_title, quantity FROM poster WHERE quantity > 25;

-- ##### SCENARIO 31 #####
-- Find the total number of shifts.
-- SELECT COUNT(id) FROM shifts;

-- ##### SCENARIO 32 #####
-- Get the names and positions of employees working on shifts with a start time between '2024-02-01' and '2024-02-28'.
-- SELECT e.employee_name, e.position, s.start_time, s.end_time FROM employee e
-- LEFT JOIN shifts s ON e.id = s.employee_id
-- WHERE s.start_time::DATE BETWEEN '2024-02-01' AND '2024-02-28';

-- ##### SCENARIO 33 #####
-- List the game titles with quantities less than 5.
-- SELECT game_title FROM game WHERE quantity < 5;

-- ##### SCENARIO 34 #####
-- Retrieve the names and quantities of action figures with prices over $50.00.
-- SELECT action_figure_title, quantity FROM action_figure WHERE price > 50;

-- ##### SCENARIO 35 #####
-- Find the total quantity of posters in stock.
-- SELECT COUNT(quantity) FROM poster;