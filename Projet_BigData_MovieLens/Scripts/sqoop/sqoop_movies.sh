sqoop import \
--connect jdbc:mysql://localhost/movielens \
--username hadoop \
--password hadoop \
--table movies \
--target-dir /movielens/movies \
--delete-target-dir \
-m 1