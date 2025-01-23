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