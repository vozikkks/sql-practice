-- Select all columns and rows from the nomnom table
SELECT *
FROM nomnom;

-- Select unique neighborhoods from the nomnom table
SELECT DISTINCT neighborhood
FROM nomnom;

-- Select unique types of cuisines from the nomnom table
SELECT DISTINCT cuisine
FROM nomnom;

-- Select all columns and rows where the cuisine is Chinese
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- Select all columns and rows where the review rating is 4 or higher
SELECT *
FROM nomnom
WHERE review >= 4;

-- Select all columns and rows for Italian cuisine with a price range that includes $$$
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price LIKE '%$$$%';

-- Select all columns and rows where the name contains the word "meatball"
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- Select all columns and rows from the specified neighborhoods: Midtown, Downtown, or Chinatown
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown';

-- Select all columns and rows where the health column has NULL values
SELECT *
FROM nomnom
WHERE health IS NULL;

-- Select the top 10 rows ordered by review rating in descending order
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- Select the name and a categorized review label based on the review rating
SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary' -- If the review is above 4.5, label it "Extraordinary"
  WHEN review > 4 THEN 'Excellent'      -- If the review is above 4, label it "Excellent"
  WHEN review > 3 THEN 'Good'           -- If the review is above 3, label it "Good"
  WHEN review > 2 THEN 'Fair'           -- If the review is above 2, label it "Fair"
  ELSE 'Poor'                           -- Otherwise, label it "Poor"
 END AS 'Review'
FROM nomnom;