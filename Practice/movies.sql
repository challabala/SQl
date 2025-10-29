-- Create table
CREATE TABLE movies (
  movie_id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  genre TEXT,
  release_year INTEGER,
  rating REAL
);

INSERT INTO movies (title, genre, release_year, rating)
VALUES 
('Inception', 'Sci-Fi', 2010, 8.8),
('Titanic', 'Romance', 1997, 7.9),
('Avengers: Endgame', 'Action', 2019, 8.4),
('The Dark Knight', 'Action', 2008, 9.0),
('Interstellar', 'Sci-Fi', 2014, 8.6);

-- This will throw an error because we're trying to insert a duplicate movie_id manually
-- INSERT INTO movies (movie_id, title, genre, release_year, rating)
-- VALUES (1, 'Duplicate Movie', 'Comedy', 2020, 6.5);

SELECT * FROM movies;

CREATE TABLE actors (
  actor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  actor_name TEXT NOT NULL,
  movie_id INTEGER,
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

INSERT INTO actors (actor_name, movie_id)
VALUES
('Leonardo DiCaprio', 2),   -- Titanic
('Christian Bale', 4),      -- The Dark Knight
('Robert Downey Jr.', 3),   -- Avengers: Endgame
('Matthew McConaughey', 5), -- Interstellar
('Joseph Gordon-Levitt', 1);-- Inception

SELECT * FROM movies;
SELECT * FROM actors;
