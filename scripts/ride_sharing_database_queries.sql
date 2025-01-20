-- Select all columns from the trips table.
SELECT * FROM trips;

-- Select all columns from the riders table.
SELECT * FROM riders;

-- Select all columns from the cars table.
SELECT * FROM cars;

-- Select the first and last name of riders along with the model of cars (creates a Cartesian product).
SELECT riders.first, riders.last, cars.model
FROM riders, cars;

-- Select detailed trip information, including the rider's first and last name, username, 
-- by performing a LEFT JOIN between the trips table and riders table on rider_id.
SELECT trips.date, 
   trips.pickup, 
   trips.dropoff, 
   trips.type, 
   trips.cost,
   riders.first, 
   riders.last,
   riders.username
FROM trips
LEFT JOIN riders 
  ON trips.rider_id = riders.id;

-- Select all columns from trips table joined with cars table based on car_id.
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

-- Combine all columns from riders and riders2 tables into one result set, removing duplicates.
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

-- Calculate the average cost of trips and round it to 2 decimal places.
SELECT ROUND(AVG(cost), 2)
FROM trips;

-- Select all riders who have completed fewer than 500 total trips.
SELECT *
FROM riders
WHERE total_trips < 500;

-- Count the number of cars that have an 'active' status.
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

-- Select all columns from cars and order them by trips_completed in descending order. 
-- Limit the result to the top 2 cars.
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;