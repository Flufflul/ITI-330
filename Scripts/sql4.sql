USE it330mc_SP21_rx29;

-- 1) CREATE, DROP
DROP TABLE IF EXISTS BOOKS;
DROP TABLE IF EXISTS AUTHORS;

CREATE TABLE AUTHORS (
	author_id int auto_increment,
    author_fname nvarchar(64) not null,
    author_lname nvarchar(64) not null,
    author_createdDate datetime default current_timestamp,
    
    CONSTRAINT PRIMARY KEY (author_id)
) engine=INNODB;

CREATE TABLE BOOKS (
	book_id int auto_increment,
    book_title nvarchar(128) not null,
    book_ISBN13 char(13) unique not null,
    book_createdDate datetime default current_timestamp,
    
    author_id int not null,
    
    CONSTRAINT PRIMARY KEY (book_id),
    CONSTRAINT FOREIGN KEY (author_id) REFERENCES AUTHORS (author_id) ON DELETE CASCADE
) engine=INNODB;


-- 2) INSERT
INSERT INTO AUTHORS (author_fname, author_lname) VALUES
('Forename', 'Surname'),
('First', 'Last');

INSERT INTO BOOKS (book_title, book_ISBN13, author_id) VALUES
('This Book', '1357908642', 1);

# DELETE FROM AUTHORS WHERE author_id > 0

