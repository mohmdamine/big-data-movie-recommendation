-- Requête 1
SELECT COUNT(*) AS total_movies
FROM movies;

-- Requête 2
SELECT COUNT(*) AS total_ratings
FROM ratings;

-- Requête 3
SELECT COUNT(DISTINCT userId) AS total_users
FROM ratings;

-- Requête 4
SELECT genres,
       COUNT(*) AS nb_films
FROM movies
GROUP BY genres
ORDER BY nb_films DESC
LIMIT 10;

-- Requête 5
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
ORDER BY avg_rating DESC
LIMIT 10;

-- Requête 6
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(r.rating) >= 100
ORDER BY avg_rating DESC
LIMIT 10;

-- Requête 7
SELECT m.title,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
ORDER BY nb_votes DESC
LIMIT 10;

-- Requête 8
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(r.rating) >= 20
ORDER BY avg_rating ASC
LIMIT 10;

-- Requête 9
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(r.rating) BETWEEN 10 AND 50
ORDER BY avg_rating DESC
LIMIT 10;

-- Requête 10
SELECT rating,
       COUNT(*) AS nb_occurrences
FROM ratings
GROUP BY rating
ORDER BY rating;

-- Requête 11
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
WHERE m.genres LIKE '%Action%'
GROUP BY m.title
HAVING COUNT(r.rating) >= 50
ORDER BY avg_rating DESC
LIMIT 10;

-- Requête 12
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
WHERE m.genres LIKE '%Comedy%'
GROUP BY m.title
HAVING COUNT(r.rating) >= 50
ORDER BY avg_rating DESC
LIMIT 10;

-- Requête 13
SELECT m.genres,
       ROUND(AVG(r.rating),2) AS avg_genre_rating
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.genres
ORDER BY avg_genre_rating DESC
LIMIT 10;

-- Requête 14
SELECT m.genres,
       COUNT(r.rating) AS total_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.genres
ORDER BY total_votes DESC
LIMIT 10;

-- Requête 15
SELECT m.genres,
       ROUND(AVG(r.rating),2) AS avg_rating,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.genres
HAVING COUNT(r.rating) >= 500
ORDER BY avg_rating DESC;

-- Requête 16
SELECT
CASE
    WHEN genres LIKE '%Action%' THEN 'Action'
    WHEN genres LIKE '%Comedy%' THEN 'Comedy'
    WHEN genres LIKE '%Drama%' THEN 'Drama'
    WHEN genres LIKE '%Romance%' THEN 'Romance'
    ELSE 'Other'
END AS genre_category,
COUNT(*) AS nb_films
FROM movies
GROUP BY
CASE
    WHEN genres LIKE '%Action%' THEN 'Action'
    WHEN genres LIKE '%Comedy%' THEN 'Comedy'
    WHEN genres LIKE '%Drama%' THEN 'Drama'
    WHEN genres LIKE '%Romance%' THEN 'Romance'
    ELSE 'Other'
END
ORDER BY nb_films DESC;

-- Requête 17
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(r.rating) >= 50
ORDER BY nb_votes DESC, avg_rating DESC
LIMIT 20;

-- Requête 18
SELECT userId,
       COUNT(*) AS nb_ratings
FROM ratings
GROUP BY userId
ORDER BY nb_ratings DESC
LIMIT 10;

-- Requête 19
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       ROUND(STDDEV(r.rating),2) AS rating_stddev,
       COUNT(*) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(*) >= 50
ORDER BY rating_stddev DESC
LIMIT 10;

-- Requête 20
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       ROUND(STDDEV(r.rating),2) AS rating_stddev,
       COUNT(*) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(*) >= 50
ORDER BY rating_stddev ASC
LIMIT 10;

-- Requête 21
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(r.rating) >= 100
ORDER BY avg_rating ASC
LIMIT 10;

-- Requête 22
SELECT m.title,
       ROUND(AVG(r.rating),2) AS avg_rating,
       COUNT(r.rating) AS nb_votes
FROM movies m
JOIN ratings r
ON m.movieId = r.movieId
GROUP BY m.title
HAVING COUNT(r.rating) BETWEEN 10 AND 30
ORDER BY avg_rating DESC
LIMIT 10;