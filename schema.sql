/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;
CREATE TABLE animals(id INT NOT NULL, PRIMARY KEY , name VARCHAR(30), date_of_brith DATE, escape_attempts INT, neutered BOOLEAN, weight_kg DEC(11,2));
/* ALTER TABLE animals ADD species VARCHAR(20); */
