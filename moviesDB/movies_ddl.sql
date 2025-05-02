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


