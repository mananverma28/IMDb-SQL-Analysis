-- IMDb Movies & TV Shows Analysis using SQL

SELECT COUNT(*) AS total_titles
FROM netflix;

SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;

SELECT title, imdb_score
FROM netflix
WHERE type='MOVIE'
ORDER BY imdb_score DESC
LIMIT 10;

SELECT title, imdb_score
FROM netflix
WHERE type='SHOW'
ORDER BY imdb_score DESC
LIMIT 10;

SELECT title, release_year
FROM netflix
WHERE type='MOVIE'
AND release_year>2020;

SELECT title, release_year
FROM netflix
WHERE type='SHOW'
AND release_year>2020;

SELECT AVG(imdb_score) AS average_rating
FROM netflix;

SELECT title, imdb_score
FROM netflix
ORDER BY imdb_score DESC
LIMIT 20;

SELECT title, runtime
FROM netflix
WHERE runtime>120;

SELECT age_certification, COUNT(*) AS total
FROM netflix
GROUP BY age_certification
ORDER BY total DESC;

SELECT AVG(runtime) AS average_runtime
FROM netflix;

SELECT release_year, COUNT(*) AS total_titles
FROM netflix
GROUP BY release_year
ORDER BY release_year;

SELECT genres, COUNT(*) AS total
FROM netflix
GROUP BY genres
ORDER BY total DESC
LIMIT 10;

SELECT production_countries, COUNT(*) AS total
FROM netflix
GROUP BY production_countries
ORDER BY total DESC
LIMIT 10;

SELECT title, imdb_score
FROM netflix
WHERE imdb_score>8
ORDER BY imdb_score DESC;
