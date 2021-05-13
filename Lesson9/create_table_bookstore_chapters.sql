CREATE TABLE bookstore.chapters (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    chapter_num INT,
    title VARCHAR(100),
    book_id INT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);