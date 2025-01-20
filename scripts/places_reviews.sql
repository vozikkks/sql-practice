-- Select all records from the 'places' table
SELECT * FROM places;

-- Select all records from the 'reviews' table
SELECT * FROM reviews;

-- Select all places where the price_point is less than or equal to $$
SELECT * FROM places WHERE price_point <= '$$';

-- Join 'places' and 'reviews' to get place details along with their reviews
SELECT places.name, places.average_rating, reviews.username, reviews.rating, reviews.review_date, reviews.note
FROM places
JOIN reviews
  ON places.id = reviews.place_id;

-- Perform a LEFT JOIN to include all places, even if they have no reviews
SELECT places.name, places.average_rating, reviews.username, reviews.rating, reviews.review_date, reviews.note
FROM places
LEFT JOIN reviews
  ON places.id = reviews.place_id;

-- Select the IDs and names of places that have at least one review
SELECT places.id, places.name
FROM places
JOIN reviews
  ON places.id = reviews.place_id
  WHERE reviews.place_id IS NOT NULL;

-- Use a Common Table Expression (CTE) to filter reviews from the year 2020
WITH reviews_2020 AS (
  SELECT *
  FROM reviews
  WHERE strftime("%Y", review_date) = '2020' -- Filter reviews by year
)
-- Join the filtered reviews with 'places' to get details for 2020 reviews
SELECT places.name, places.average_rating, reviews_2020.username, reviews_2020.rating, reviews_2020.review_date, reviews_2020.note
FROM places
JOIN reviews_2020
  ON places.id = reviews_2020.place_id;