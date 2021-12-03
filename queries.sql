
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



SELECT * FROM visits v JOIN animals a ON v.animal_id = a.id WHERE vet_id = 1 ORDER BY date_of_visit DESC LIMIT 1;
SELECT COUNT(v.animal_id) FROM visits v JOIN animals a ON v.animal_id = a.id WHERE vet_id = 3;
SELECT * FROM vets v RIGHT JOIN specializations s where v.id = s.vet_id; 
SELECT t1.name , s.name FROM (SELECT * FROM vets v LEFT JOIN specializations s ON v.id = s.vet_id) t1 LEFT JOIN species s ON s.id = t1.species_id;
SELECT a.name, v.date_of_visit FROM visits v JOIN animals a ON v.animal_id = a.id WHERE vet_id = 3 AND (v.date_of_visit BETWEEN '4,1,2020' AND '8,30,2020');
SELECT COUNT(v.animal_id), a.name FROM visits v JOIN animals a ON v.animal_id = a.id GROUP BY (a.name) ORDER BY count DESC LIMIT 1 ;
SELECT a.name, v.date_of_visit FROM visits v JOIN animals a ON v.animal_id = a.id WHERE vet_id = 2 ORDER BY v.date_of_visit LIMIT 1;
SELECT * FROM (SELECT * FROM visits v JOIN animals a ON v.animal_id = a.id ORDER BY date_of_visit  DESC LIMIT 1) t1 JOIN vets v ON t1.vet_id = v.id;
SELECT COUNT(v.id) FROM (SELECT v.id , v.name FROM vets v LEFT JOIN specializations s on v.id = s.vet_id WHERE s.vet_id IS NULL ) t1 JOIN visits v ON v.vet_id = t1.id;
SELECT COUNT(s.name), s.name FROM (SELECT * FROM visits v JOIN animals a ON v.animal_id = a.id WHERE v.vet_id = 2) t1 JOIN species s ON t1.species_id = s.id GROUP BY s.name ORDER BY count DESC LIMIT 1;