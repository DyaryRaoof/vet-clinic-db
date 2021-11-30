
/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';
SELECT * from animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-1-1';
SELECT * from animals WHERE ecape_attempts < 3  AND neutered IS true;
SELECT date_of_birth from animals WHERE name IN ('Agumon', 'Pikachu');
SELECT (name, ecape_attempts) from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered IS true;
SELECT * from animals WHERE name != 'Agumon';
SELECT * from animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
