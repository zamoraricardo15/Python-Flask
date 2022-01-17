INSERT INTO authors (name)
VALUES ("John Tolkien"),("Scott Fitzgerald"),("George Martin");

INSERT INTO books (title, num_of_pages)
VALUES ("The Silmarillion",500),("The Great Gatsby",400),("Game of Thrones",200);

Update books SET title = "T#" 
WHERE title = "The Silmarillion";

UPDATE authors SET name = "Ronald Tolkien"
WHERE id = 1;

INSERT INTO favorites (author_id,book_id)
VALUES (1,1),(1,2),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(3,4),(4,1),(4,2),(4,3),(4,4),(4,5);

SELECT * FROM books 
JOIN favorites on books.id = favorites.book_id
JOIN authors on authors.id = favorites.author_id
WHERE books.id = 3;

DELETE FROM favorites
WHERE book_id = 3
AND author_id = 2;

SELECT author_id from favorites WHERE book_id = 3 ORDER BY author_id LIMIT 1;

INSERT INTO favorites (author_id,book_id)
VALUES (5,2);

SELECT * FROM authors
JOIN favorites ON authors.id = favorites.author_id
JOIN books ON books.id = favorites.book_id
WHERE authors.id = 3;