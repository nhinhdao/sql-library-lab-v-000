# series (id, title, author_id, subgenre_id) VALUES (1, "A Song of Ice and Fire", 1, 1), (2, "Second Series", 2, 2);
# subgenres (id, name) VALUES (1, "medieval"), (2, "space opera");
# authors (id, name) VALUES (1, "George R. R. Martin"), (2, "Second Author");
# books (id, title, year, series_id) VALUES (1, "Game of Thrones", 1996, 1), (2, "A Clash of Kings", 1998, 1)
# characters (id, name, motto, species, author_id, series_id) VALUES (1, "Lady", "Woof Woof", "direwolf", 1, 1)
# character_books (id, book_id, character_id) VALUES (9, 4, 5), (10, 4, 6), (11, 5, 6), (12, 6, 6)

def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year from books join series on books.series_id = series.id where series_id = 1 order by books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters order by motto limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(species) from characters group by species order by count(species) desc limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select a.name, sg.name from authors a inner join series s on a.id = s.author_id inner join subgenres sg on sg.id = s.subgenre_id"
end

def select_series_title_with_most_human_characters
  "select series.title from series inner join characters on series.id = characters.series_id where characters.species = 'human' order by series.title limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.book_id) from characters join character_books on characters.id = character_books.character_id group by characters.name order by count(character_books.book_id) desc"
end
