# Projet Big Data - Système simple de recommandation de films (MovieLens)

# 1\. Introduction

Dans le cadre du module Big Data, ce projet a pour objectif de concevoir un pipeline Big Data complet permettant de construire un système simple de recommandation de films basé sur le dataset MovieLens.

Le projet s'appuie sur plusieurs technologies de l'écosystème Hadoop :

- MySQL pour le stockage relationnel initial ;
- Apache Sqoop pour le transfert des données ;
- HDFS pour le stockage distribué ;
- Hive pour l'analyse Big Data ;
- HBase pour le stockage NoSQL des recommandations.

L'objectif principal est d'exploiter les notes des utilisateurs afin de produire des recommandations de films simples mais pertinentes.

# 2\. Problématique

Le système de recommandation vise à répondre à la problématique suivante :

Quels films peuvent être recommandés aux utilisateurs à partir des notes et des genres disponibles dans le dataset MovieLens ?

Le projet cherche à identifier :

- les films les mieux notés ;
- les films les plus populaires ;
- les genres les plus appréciés ;
- les films sous-estimés ;
- les meilleures recommandations globales.

# 3\. Technologies utilisées

| Technologie  | Rôle                   |
| ------------ | ---------------------- |
| Ubuntu       | Système d'exploitation |
| MySQL        | Stockage relationnel   |
| Hadoop HDFS  | Stockage distribué     |
| YARN         | Gestion des ressources |
| Apache Sqoop | Import MySQL → HDFS    |
| Apache Hive  | Analyse Big Data       |
| Apache HBase | Stockage NoSQL         |
| MovieLens    | Dataset utilisé        |

# 4\. Présentation du dataset

Le dataset utilisé est le dataset officiel MovieLens fourni par GroupLens Research.

Dataset choisi :

ml-latest-small

Le dataset contient plusieurs fichiers CSV :

| Fichier     | Description                        |
| ----------- | ---------------------------------- |
| movies.csv  | Informations des films et genres   |
| ratings.csv | Notes données par les utilisateurs |
| tags.csv    | Tags utilisateurs                  |
| links.csv   | Identifiants IMDb et TMDB          |

Dans ce projet, les fichiers principalement utilisés sont :

- movies.csv
- ratings.csv

Ces deux tables sont suffisantes pour construire un système de recommandation simple basé sur les notes utilisateurs.

# 5\. Architecture générale du pipeline

Le pipeline Big Data réalisé est le suivant :

CSV → MySQL → Sqoop → HDFS → Hive → HBase

Chaque composant du pipeline joue un rôle spécifique dans le traitement des données.

# 6\. Analyse et interprétation globale

Les analyses réalisées montrent que :

- certains films possèdent une excellente qualité perçue ;
- la popularité ne garantit pas toujours une bonne évaluation ;
- certains films peu connus obtiennent des notes très élevées ;
- les genres Drama et Action sont particulièrement dominants ;
- la combinaison moyenne des notes + popularité permet de produire des recommandations pertinentes.

Le système développé constitue une approche simple mais efficace de recommandation de films basée sur les données utilisateurs.

# 7\. Conclusion

Ce projet a permis de mettre en œuvre un pipeline Big Data complet autour du dataset MovieLens.

Les principales réalisations sont :

- ingestion des données dans MySQL ;
- transfert distribué avec Sqoop ;
- stockage dans HDFS ;
- analyses Big Data avec Hive ;
- implémentation d'un système de recommandation simple ;
- stockage NoSQL des recommandations dans HBase.

Le projet a également permis de manipuler concrètement plusieurs composants majeurs de l'écosystème Hadoop.

Enfin, les résultats obtenus montrent qu'il est possible de construire un système de recommandation cohérent à partir d'analyses statistiques simples sur les notes utilisateurs.