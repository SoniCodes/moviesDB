--This query creates a table for all the movies in the db, table includes columns title, description, year, etc. 
CREATE TABLE movie_db.movies (
    movie_id int NOT NULL PRIMARY KEY, 
    title varchar(100),
    description text,
    year int,
    runtime int,
    rating int
)

--this query creates a table for all of the actors who are in the movie database.
CREATE TABLE movie_db.actors (
    actor_id int NOT NULL PRIMARY KEY,
    first_name varchar(50),
    last_name varchar(50)
)

-- this query creates a table for all of the directors in the movie database.
CREATE TABLE movie_db.directors (
    director_id int NOT NULL PRIMARY KEY,
    first_name varchar(50),
    last_name varchar(50)
)

-- this query creates a table for all of the genres in the movie database. 
CREATE TABLE movie_db.genres (
    genre_id int NOT NULL PRIMARY KEY,
    genres varchar(50)
)

-- this query connects the movies table with the actor table(many to many relationship).
CREATE TABLE movie_actor (
    movie_id int NOT NULL,
    actor_id int NOT NULL,
    PRIMARY KEY (movie_id,actor_id),
    KEY actor_id (actor_id),
    CONSTRAINT (movie_actor) FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
    CONSTRAINT (movie_actor) FOREIGN KEY (actor_id) REFERENCES actors (actor_id)
) 

-- this query connects the movies table with the directors table(many to many relationship)
CREATE TABLE movie_director (
    movie_id int NOT NULL,
    director_id int NOT NULL,
    PRIMARY KEY (movie_id,director_id),
    KEY director_id (director_id),
    CONSTRAINT (movie_director) FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
    CONSTRAINT (movie_director) FOREIGN KEY (director_id) REFERENCES directors (director_id)
) 

-- this query connects the movies table with the genres table(many to many relationship)
CREATE TABLE `movie_genre` (
    movie_id int NOT NULL,
    genre_id int NOT NULL,
    PRIMARY KEY (movie_id,genre_id),
    KEY genre_id (genre_id),
    CONSTRAINT (movie_genre) FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
    CONSTRAINT (movie_genre) FOREIGN KEY (genre_id) REFERENCES genres (genre_id)
)