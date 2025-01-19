-- Select all columns and rows from the startups table
SELECT * 
FROM startups;

-- Count the total number of rows (startups) in the table
SELECT COUNT(*) 
FROM startups;

-- Calculate the total valuation of all startups
SELECT SUM(valuation) 
FROM startups;

-- Find the maximum amount of funding raised by a startup
SELECT MAX(raised) 
FROM startups;

-- Find the maximum funding raised by startups in the Seed stage
SELECT MAX(raised) 
FROM startups 
WHERE stage = 'Seed';

-- Find the earliest year of foundation among the startups
SELECT MIN(founded) 
FROM startups;

-- Find the average valuation (rounded to 2 decimal places) for each category of startups
-- Group by the category and order by average valuation in descending order
SELECT category, ROUND(AVG(valuation), 2) 
FROM startups 
GROUP BY 1
ORDER BY 2 DESC;

-- Count the number of startups in each category
SELECT category, COUNT(*) 
FROM startups
GROUP BY category;

-- Count the number of startups in each category where the count is greater than 3
-- Order the results by the count in descending order
SELECT category, COUNT(*) 
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY 2 DESC;

-- Calculate the average number of employees for startups in each location
SELECT location, AVG(employees) 
FROM startups
GROUP BY location;

-- Calculate the average number of employees for startups in each location,
-- but only include locations where the average number of employees is greater than 500
SELECT location, AVG(employees) 
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;