* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Agumon', To_DATE('2,3,2020', 'MM, DD, YY'), 0 ,true,10.23);

INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Gabumon', To_DATE('11,15,2018', 'MM, DD, YY'), 2 ,true,8);

INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Pikachu', To_DATE('1,7,2021', 'MM, DD, YY'), 1 ,false,15.04);

INSERT INTO animals (name, date_of_birth, ecape_attempts, neutered, weight_kg)VALUES ('Devimon', To_DATE('5,12,2017', 'MM, DD, YY'), 5 ,true,11);
