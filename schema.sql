/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;
CREATE TABLE animals(id INT NOT NULL, name VARCHAR(30) NOT NULL, date_of_brith DATE NOT NULL, escape_attempts INT NOT NULL, neutered BOOLEAN NOT NULL, weight_kg DEC(11,2) NOT NULL);
/* ALTER TABLE animals ADD species VARCHAR(20); */
