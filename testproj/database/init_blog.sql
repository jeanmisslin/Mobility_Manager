
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS comments;

CREATE TABLE articles (
    id INTEGER PRIMARY KEY,
    title text,
    author text,
    date NUMBER,
    text text
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY,
    blogid INTEGER,
    author text,
    date NUMBER,
    text text
);