Select name, year_released
FROM movies
WHERE year_released BETWEEN 1900 AND 1999;


SELECT first_name, last_name, genres.name
FROM directors INNER JOIN directors_genres on directors.id = directors_genres.DIRECTOR_ID
                INNER JOIN genres on directors_genres.genre = genres.name
WHERE genres.name = 'Sci-Fi';


SELECT FIRST_NAME,LAST_NAME,YEAR_RELEASED
FROM directors d INNER JOIN movies_directors md on d.id = md.director_id
                INNER JOIN movies m on md.movie_id = m.id
WHERE  m.year_released BETWEEN 1900 AND 1999;


SELECT name
FROM movies INNER JOIN roles ON movies.id = roles.movie_id
            INNER JOIN actors ON roles.actor_id = actors.id
WHERE first_name = 'Uma' AND last_name = 'Thurman';

SELECT actors.first_name, actors.last_name
FROM  actors INNER JOIN roles on actors.id = roles.actor_id
             INNER JOIN movies on roles.movie_id = movies.id
             INNER JOIN movies_directors on movies.id = movies_directors.movie_id
             INNER JOIN directors on movies_directors.director_id = directors.id
WHERE directors.FIRST_NAME = 'Quentin';