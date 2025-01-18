-- Create the 'friends' table
CREATE TABLE friends (
  id INTEGER, 
  name TEXT,
  birthday DATE
);

-- Insert initial data
INSERT INTO friends (id, name, birthday)
VALUES 
(1, 'Ororo Munroe', '1940-05-30'),
(2, 'Jean Grey', '1968-12-05'),
(3, 'Scott Summers', '1967-09-14');

-- Update a record to change the name of the first friend
UPDATE friends SET name = 'Storm Munroe' WHERE id = 1;

-- Add a new column for email addresses
ALTER TABLE friends ADD COLUMN email TEXT;

-- Update email addresses for the friends
UPDATE friends SET email = 'storm@codecademy.com' WHERE id = 1;
UPDATE friends SET email = 'jean@codecademy.com' WHERE id = 2;
UPDATE friends SET email = 'scott@codecademy.com' WHERE id = 3;

-- Delete a record where id = 1
DELETE FROM friends WHERE id = 1;

-- Retrieve all remaining records
SELECT * FROM friends;