-- Medium: Create a table with your top 10 movies. Include title, release date, and rating Create a query that pulls all movies, in order of release date, where the title includes the letter “s”.
USE User;
CREATE TABLE Movies(
Title TEXT,
Release_Date DATE,
Rating REAL);

INSERT INTO Movies
VALUES ("The Dark Knight","2008-03-02","5.0"),
("Inception","2010-05-01","4.3"),
("The Dark Knight Rises" ,"2012-06-03","4.0"),
('Logan','2017-03-03',4.8),
('Wonder Woman','2017-06-02',4.6),
('pirates of caribbean the curse of the black pearl','2003-06-28',4.9),
('Get out','2017-02-24',4.9),
('Kingsman golden circle','2017-10-22',4.9),
('Gladiator','2000-05-05',4.9),
('Gladiators','2000-07-05',4.9);
SELECT * FROM Movies WHERE Title LIKE "%s%" ORDER BY Release_Date;

-- Hard: Make a copy of your Medium Challenge Write out the queries that would add the director’s First Name and Last Name into two separate columns. Create a query that puts the names together. Create a query to put the list in alphabetical order by the last name from A-Z After you order the list, remove the Movies where the Last Name ends with ”R-Z” Write a query where the first three appear
ALTER TABLE Movies
ADD COLUMN 
Director_First TEXT,
ADD COLUMN
Director_Last TEXT;
UPDATE Movies
SET 
Director_First="Sam",
Director_Last="Smith"
WHERE Rating >= 5;
SET SQL_SAFE_UPDATES = 0;
SELECT * FROM Movies;
UPDATE Movies
SET
Director_First="Drake",
Director_Last="Bell"
WHERE Rating <= 4;
SELECT CONCAT(Dirrector_First,'',Direcetor_Last) AS Director_Name FROM Movies;
SELECT * FROM Movies
ORDER BY Director_Last ASC
LIMIT 3 ;
