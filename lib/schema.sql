create table series (id INTEGER PRIMARY KEY, title text, author_id integer, subgenre_id integer);

create table subgenres (id INTEGER PRIMARY KEY, name text);

create table authors (id INTEGER PRIMARY KEY, name text);

create table books (id INTEGER PRIMARY KEY, title text, year integer, series_id integer);

create table characters (id INTEGER PRIMARY KEY, name text, motto text, species text, author_id integer, series_id integer);

create table character_books (id INTEGER PRIMARY KEY, book_id integer, character_id integer);
