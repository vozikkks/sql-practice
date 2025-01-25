-- Challenge 1: Books

-- 1. Select the title, author, and average rating of books with an average rating between 3.5 and 4.5.
SELECT title, author, average_rating
FROM books
WHERE average_rating BETWEEN 3.5 AND 4.5;

-- 2. Select all the unique authors from the table.
SELECT DISTINCT author 
FROM books;

-- Challenge 2: NBA Matches

-- 1. Given the final scores of several NBA games, use CASE to return the results for each game:
-- If the home team won, return ‘HOME WIN’.
-- If the away team won, return ‘AWAY WIN’.
-- Select the id column and the CASE result.
SELECT id, 
  CASE
    WHEN home_points > away_points THEN 'HOME WIN'
    ELSE 'AWAY WIN'
  END AS result
FROM nba_matches;

-- Challenge 3: Apps

-- 1. Find the number of apps by genre.
SELECT genre, COUNT(id) AS app_count
FROM apps
GROUP BY genre;

-- 2. Get the total number of reviews of all apps by genre.
-- Limit the results to genres where the total number of app reviews is over 30 million.
SELECT genre, SUM(reviews) AS total_reviews
FROM apps
GROUP BY genre
HAVING SUM(reviews) > 30000000;

-- Challenge 4: Apps
-- 1. Select the name, genre, and rating of apps in descending order of their rating, and limit the result to 20 rows.
SELECT name, genre, rating
FROM apps
ORDER BY rating DESC
LIMIT 20;

-- Challenge 5: Apps Ratings
-- 1. Find the lowest rating of all apps.
SELECT MIN(rating) AS lowest_rating
FROM apps;

-- 2. Find the highest rating of all apps.
SELECT MAX(rating) AS highest_rating
FROM apps;

-- 3. Find the average rating of all apps, rounded to 2 decimal places.
SELECT ROUND(AVG(rating), 2) AS average_rating
FROM apps;

-- Challenge 6: Projects and Employees
-- 1. Perform an inner join on the two tables, matching the employee assigned to each project, and select all columns.
SELECT *
FROM projects
JOIN employees
  ON projects.employee_id = employees.id;

-- 2. Perform a join that selects all projects even if there is no employee assigned to it.
SELECT *
FROM projects
LEFT JOIN employees
  ON projects.employee_id = employees.id;

-- Challenge 7: Students
-- 1. Using a subquery, get all students in math who are also enrolled in English.
SELECT * 
FROM math_students
WHERE student_id IN (
  SELECT student_id
  FROM english_students
);

-- 2. Using a subquery, find out which students in math are in the same grade level as the student with id 7.
SELECT *
FROM math_students
WHERE grade IN (
  SELECT grade
  FROM math_students
  WHERE student_id = 7
);