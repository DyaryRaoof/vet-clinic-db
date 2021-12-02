
/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon';
SELECT * from animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-1-1';
SELECT * from animals WHERE ecape_attempts < 3  AND neutered IS true;
SELECT date_of_birth from animals WHERE name IN ('Agumon', 'Pikachu');
SELECT (name, ecape_attempts) from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered IS true;
SELECT * from animals WHERE name != 'Agumon';
SELECT * from animals WHERE weight_kg BETWEEN 10.4 AND 17.3;


SELECT COUNT(*) FROM animals;
SELECT ecape_attempts, count(ecape_attempts) FROM animals WHERE ecape_attempts = 0 Group BY ecape_attempts;
SELECT AVG(weight_kg) FROM animals;
SELECT COUNT(ecape_attempts), neutered FROM animals Group BY neutered;
SELECT MIN(weight_kg) , MAX(weight_kg), species FROM animals GROUP BY species;
SELECT AVG(ecape_attempts) AS Average_Escape_Attempts FROM animals WHERE date_of_birth BETWEEN '1,1,1990' AND '1,1,2000';



SELECT name, full_name FROM animals a JOIN owners o ON o.id = a.owner_id  WHERE o.full_name = 'Melody Pond';
SELECT name FROM animals a JOIN species s ON s.id = a.species_id  WHERE s.name = 'Pokemon';
SELECT a.name FROM animals a JOIN species s ON s.id = a.species_id  WHERE s.name = 'Pokemon';
SELECT o.full_name, a.name FROM animals a RIGHT JOIN owners o ON o.id = a.owner_id;
SELECT COUNT(a.name), s.name FROM animals a JOIN species s ON s.id = a.species_id GROUP BY (s.name);
SELECT a.name, o.full_name FROM animals a JOIN owners o ON o.id = a.owner_id WHERE o.full_name = 'Jennifer Orwell';
SELECT a.name, o.full_name FROM animals a JOIN owners o ON o.id = a.owner_id WHERE o.full_name = 'Dean Winchester' AND ecape_attempts = 0;
SELECT COUNT(a.name), o.full_name FROM animals a JOIN owners o ON a.owner_id = o.id GROUP BY (o.full_name) ORDER BY count DESC LIMIT 1;

