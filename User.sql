CREATE DATABASE User;
-- Very Easy: Create a table with your top three cars and include make, model, year. Create a query to add in two more cars
USE User;
CREATE TABLE Cars (
MAKE TEXT,
Model TEXT,
Year YEAR);
INSERT INTO Cars
VALUES("Toyota","Rav4","2018"),("Honda","Civic","2022"),("Ford","Focus","2016");
SELECT * FROM Cars;
INSERT INTO Cars
VALUES ("Ford","Mustang","2000"),("Jeep","Wrangler","2017");

-- Very Hard: Copy the table from your Very Easy Challenge Write a query to add in three cars at once Write a query to add in prices and colors for each of these cars Write a query to put the Make and Model together in one column Create a new query that adds an additional column to the results to show how many cars have the same Make.
ALTER TABLE Cars
ADD COLUMN
Price INTEGER,
ADD COLUMN
Color TEXT;
INSERT INTO Cars
VALUES("Toyota","Rav4","2018",35000,"Blue"),("Honda","Civic","2022",24000,"Red"),("Ford","Focus","2016",15600,"Yellow");
SELECT CONCAT(Make, '' , Model) AS Make_Model FROM Cars;
ALTER TABLE Cars
ADD COLUMN
Same_Make VARCHAR(50) NOT NULL DEFAULT "Honda";
SELECT * FROM Cars;
UPDATE Cars 
SET Same_Make=REPLACE(Same_Make,Same_Make,CONCAT(Make, '' ,Model));