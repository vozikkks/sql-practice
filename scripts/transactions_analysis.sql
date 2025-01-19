-- Select all columns and rows from the transactions table
SELECT * 
FROM transactions;

-- Calculate the total money coming in (money_in) across all transactions
SELECT SUM(money_in) 
FROM transactions;

-- Calculate the total money going out (money_out) across all transactions
SELECT SUM(money_out) 
FROM transactions;

-- Count the number of transactions with money_in where the currency is Bitcoin (BIT)
SELECT COUNT(money_in) 
FROM transactions
WHERE currency = 'BIT';

-- Find the maximum money_in amount across all transactions
SELECT MAX(money_in) 
FROM transactions;

-- Find the maximum money_out amount across all transactions
SELECT MAX(money_out) 
FROM transactions;

-- Calculate the average money_in for transactions where the currency is Ethereum (ETH)
SELECT AVG(money_in) 
FROM transactions
WHERE currency = 'ETH';

-- Group transactions by date and calculate the following for each date:
-- 1. The average money_in (rounded to 2 decimal places) as 'Average Buy'
-- 2. The average money_out (rounded to 2 decimal places) as 'Average Sell'
SELECT date AS 'Date', 
   ROUND(AVG(money_in), 2) AS 'Average Buy',
   ROUND(AVG(money_out), 2) AS 'Average Sell'
FROM transactions
GROUP BY date;