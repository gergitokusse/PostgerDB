/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name like '%mon';
SELECT name FROM animals WHERE date_of_brith BETWEEN '2016-01-01' AND '2019-01-01';
SELECT name FROM animals WHERE neutered = 'true' AND escape_attempts > 3;
SELECT date_of_brith FROM animals WHERE name = 'Agumon' OR name = 'pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = 'true';
SELECT * FROM animals WHERE name != 'Gebmon';
SELECT * FROM animals WHERE weight_kg >= 10.4 and weight_kg <= 17.3;

-- Project-2
BEGIN;
UPDATE animals set species = 'unspecified';
select * from animals;
ROLLBACK;

BEGIN;
UPDATE animals set species = 'digimon' WHERE name like '%mon';
UPDATE animals set species = 'pokemon' WHERE species = '';
select * from animals;
COMMIT;
select * from animals;

BEGIN;
DELETE FROM animals;
select * from animals;
ROLLBACK;
select * from animals;

SAVEPOINT P1;
UPDATE animals set weight_kg = weight_kg*-1;
ROLLBACK TO SAVEPOINT P1;
UPDATE animals set weight_kg = weight_kg*-1 WHERE weight_kg < 0;


-- Write queries to answer the following questions
SELECT COUNT(name) FROM animals;
SELECT COUNT(name) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts), name FROM animals GROUP BY name;
SELECT MAX(weight_kg), MIN(weight_kg) FROM animals WHERE species = 'digimon';
SELECT MAX(weight_kg), MIN(weight_kg) FROM animals WHERE species = 'pokemon';

SELECT AVG(escape_attempts) FROM animals WHERE species = 'digimon' and date_of_brith BETWEEN '1990-01-01' AND '2000-01-01';
SELECT AVG(escape_attempts) FROM animals WHERE species = 'pokemon' and date_of_brith BETWEEN '1990-01-01' AND '2000-01-01';

