sqoop import \
--connect jdbc:mysql://localhost/movielens \
--username hadoop \
--password hadoop \
--table ratings \
--target-dir /movielens/ratings \
--delete-target-dir \
-m 1