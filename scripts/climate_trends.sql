-- Select all data from the state_climate table
SELECT * 
FROM state_climate;

-- Calculate the running average temperature for each state, ordered by year
SELECT 
  state,
  year,
  tempc,
  AVG(tempc) OVER (PARTITION BY state ORDER BY year) AS running_avg_temp
FROM 
  state_climate;

-- Find the lowest temperature for each state
SELECT 
  state,
  year,
  tempc,
  FIRST_VALUE(tempc) OVER (PARTITION BY state ORDER BY tempc) AS lowest_temp
FROM 
  state_climate;

-- Find the highest temperature for each state
SELECT 
  state,
  year,
  tempc,
  LAST_VALUE(tempc) OVER (PARTITION BY state ORDER BY tempc) AS highest_temp
FROM 
  state_climate;

-- Calculate the year-to-year temperature change for each state
SELECT 
  state,
  year,
  tempc,
  tempc - LAG(tempc, 1, 0) OVER (PARTITION BY state ORDER BY year) AS change_in_temp
FROM 
  state_climate
ORDER BY 
  change_in_temp DESC;