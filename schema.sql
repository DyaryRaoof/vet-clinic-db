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