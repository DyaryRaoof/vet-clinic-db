* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Agumon', To_DATE('2,3,2020', 'MM, DD, YY'), 0 ,true,10.23);

INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Gabumon', To_DATE('11,15,2018', 'MM, DD, YY'), 2 ,true,8);

INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Pikachu', To_DATE('1,7,2021', 'MM, DD, YY'), 1 ,false,15.04);

INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Devimon', To_DATE('5,12,2017', 'MM, DD, YY'), 5 ,true,11);



INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Charmander', To_DATE('2,8,2020', 'MM, DD, YY'), 0 ,true,-11);
INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Plantmon', To_DATE('11,15,2022', 'MM, DD, YY'), 2 ,true,-5.7);
INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Squirtle', To_DATE('4,2,1993', 'MM, DD, YY'), 3 ,false,-12.13);
INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Angemon', To_DATE('6,12,2005', 'MM, DD, YY'), 1 ,true,-45);
INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Blossom', To_DATE('10,13,1998', 'MM, DD, YY'), 3,true,17);

BEGIN;
UPDATE animals SET species = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;

DELETE FROM animals WHERE date_of_birth > '1,1,2022';
SAVEPOINT point1;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT point1;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;



INSERT INTO owners (full_name , age ) VALUES ('Sam Smith' , 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);
INSERT INTO species (name) VALUES ('Pokemon'),('Digimon');
UPDATE animals SET species_id = 2 WHERE NAME LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE NAME NOT LIKE '%mon';
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon', 'Boarmon');