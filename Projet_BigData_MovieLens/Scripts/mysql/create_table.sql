CREATE DATABASE movielens;

USE movielens;

CREATE TABLE movies (
    movieId INT,
    title TEXT,
    genres TEXT
);

CREATE TABLE ratings (
    userId INT,
    movieId INT,
    rating FLOAT,
    timestamp BIGINT
);