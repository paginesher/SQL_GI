-- Easy: Create a table with your top five favorite books with Title, Publish Date, and
-- Author First/Last Name Create a query to add in two new books Remove the oldest book Provide an additional query giving the sum of all books
USE User;
CREATE TABLE Books(
Title TEXT,
Publish_date DATE,
Author_First TEXT,
Author_Last TEXT);
SELECT * FROM Books;
INSERT INTO Books
VALUES ("Cat in the Hat","2001-02-22","PJ", "Her"),
("1984","1949-06-08"," George", "Orwell"),
("Harry Potter", "2000-05-03","Stephanie", "Meyers"),
("Red fish , BLue Fish","2001-04-02","Theodor", "Sesus"),
("Brown Bear","2002-08-06","Sam","Smith");
INSERT INTO Books
VALUES ("Marvins room","2008-05-10","Drake","Gram");
SELECT * FROM Books
ORDER BY Publish_date ;
DELETE FROM Books
ORDER BY Publish_date
LIMIT 1;
SELECT COUNT(*) FROM Books;
SELECT * FROM Cars;
