CREATE TABLE movie_db.movies (
    movie_id INT PRIMARY KEY, 
    title VARCHAR(100),
    description TEXT,
    year INT,
    runtime INT,
    rating INT
)

CREATE TABLE movie_db.actors (
    actor_id int NOT NULL PRIMARY KEY,
    first_name varchar(50),
    last_name varchar(50),
)

CREATE TABLE movie_db.directors (
    director_id int NOT NULL PRIMARY KEY,
    first_name varchar(50),
    last_name varchar(50),
)

CREATE TABLE movie_db.genres (
    genre_id int NOT NULL PRIMARY KEY,
    genres varchar(50),
    PRIMARY KEY (`genre_id`)
)

    CREATE TABLE movie_actor (
    movie_id int NOT NULL,
    actor_id int NOT NULL,
    PRIMARY KEY (movie_id,actor_id),
    KEY actor_id (actor_id),
    CONSTRAINT movie_actor FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
    CONSTRAINT movie_actor FOREIGN KEY (actor_id) REFERENCES actors (actor_id)
) 

    CREATE TABLE movie_director (
    movie_id int NOT NULL,
    director_id int NOT NULL,
    PRIMARY KEY (movie_id,director_id),
    KEY director_id (director_id),
    CONSTRAINT movie_director FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
    CONSTRAINT movie_director FOREIGN KEY (director_id) REFERENCES directors (director_id)
) 

