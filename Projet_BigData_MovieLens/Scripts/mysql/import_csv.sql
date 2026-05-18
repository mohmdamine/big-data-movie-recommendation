SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE '/media/sf_ml-latest-small/ml-latest-small/movies.csv'
INTO TABLE movies
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(movieId, title, genres);

LOAD DATA LOCAL INFILE '/media/sf_ml-latest-small/ml-latest-small/ratings.csv'
INTO TABLE ratings
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(userId, movieId, rating, timestamp);