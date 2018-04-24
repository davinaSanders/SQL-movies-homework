DROP TABLE lightsabers;
DROP TABLE characters;


CREATE TABLE characters(
id SERIAL8 PRIMARY KEY,
name VARCHAR(255),
darkside BOOLEAN,
age INT
);

CREATE TABLE lightsabers(
  id SERIAL8 PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL,
  colour VARCHAR(255) NOT NULL,
  character_id INT8 REFERENCES characters(id)
);

INSERT INTO characters(name, darkside, age)
VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters(name, darkside, age)
VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters(name, darkside, age)
VALUES ('Darth Maul', true, 32);
-- insert comments
INSERT INTO characters(name, darkside)
VALUES ('Yoda', false);
INSERT INTO characters(name, darkside, age)
VALUES ('Luke Skywalker', false, 17);
-- third (age) column will be left blank
INSERT INTO characters(name, darkside, age)
VALUES('stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age)
VALUES('stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age)
VALUES('stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age)
VALUES('stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age)
VALUES('stormtrooper', true, 25);



INSERT INTO lightsabers(colour, hilt_metal, character_id)
VALUES('green', 'palladium', 4);
INSERT INTO lightsabers(colour, hilt_metal, character_id)
VALUES('red', 'gold', 5);
INSERT INTO lightsabers(colour, hilt_metal, character_id)
VALUES('blue', 'titanium', 4);

SELECT * FROM lightsabers WHERE character_id = 4;
-- INSERT INTO lightsabers(colour) VALUES ('red');

SELECT * FROM lightsabers;

UPDATE characters SET age = 29 WHERE id = 9;

UPDATE characters SET(name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';



DELETE FROM characters WHERE name = 'Darth Maul';


-- SELECT COUNT(*) FROM characters;
SELECT * FROM characters;
