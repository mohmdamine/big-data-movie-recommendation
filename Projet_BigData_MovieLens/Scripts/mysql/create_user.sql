CREATE USER 'hadoop'@'localhost' IDENTIFIED BY 'hadoop';

GRANT ALL PRIVILEGES ON movielens.* TO 'hadoop'@'localhost';

FLUSH PRIVILEGES;