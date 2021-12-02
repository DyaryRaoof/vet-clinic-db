/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;

CREATE TABLE animals (
    id  INTEGER GENERATED ALWAYS AS IDENTITY,
    name varchar(100),
    date_of_birth DATE,
    ecape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg FLOAT
);

ALTER TABLE animals ADD species varchar(255);


CREATE TABLE owners (id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, full_name VARCHAR(255), age INT);
CREATE TABLE species (id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, name VARCHAR(255));
ALTER TABLE animals ADD PRIMARY KEY (id);
ALTER TABLE animals DROP COLUMN  species;
ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD  FOREIGN KEY(species_id) REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD  FOREIGN KEY(owner_id) REFERENCES owners(id);



CREATE TABLE vets (id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, name VARCHAR(100),age INT, date_of_graduation DATE);
CREATE TABLE specializations ( id INT GENERATED ALWAYS AS IDENTITY, vet_id INT , species_id INT, UNIQUE(id));
CREATE TABLE visits ( id INT GENERATED ALWAYS AS IDENTITY, vet_id INT , animal_id INT, UNIQUE(id));