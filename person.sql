

    -- Create a file called person.sql and write out the code for the following problems:

    -- Create a table called person that records a person’s id, name, age, height ( in cm ), city, favorite_color.
CREATE TABLE person (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(20),
  age INT, 
  height INT,
  city VARCHAR(20),
  favorite_color VARCHAR(20)
  );
    --         id should be an auto-incrementing id/primary key - Use type: SERIAL

    -- Add 5 different people into the person database.
INSERT INTO person(name, age, height, city, favorite_color)
VALUES ('Giselle', 25, 180, 'St. Paul', 'pink');
INSERT INTO person(name, age, height, city, favorite_color)
VALUES ('Zenith', 28, 175, 'Dallas', 'green');
INSERT INTO person(name, age, height, city, favorite_color)
VALUES ('Cece', 2, 20, 'Salt Lake City', 'orange');
INSERT INTO person(name, age, height, city, favorite_color)
VALUES ('Luna', 1, 25, 'Salt Lake City', 'blue');
INSERT INTO person(name, age, height, city, favorite_color)
VALUES ('Kathy', 62, 170, 'Salt Lake City', 'green');
    --         Remember to not include the person_id because it should auto-increment.

    -- List all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC
    -- List all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height
    -- List all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC
    -- List all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;
    -- List all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;
    -- List all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age < 20 OR age >30;
    -- List all the people in the person table that are not 27 (Use not equals).
SELECT * FROM person
WHERE age <> 27;
    -- List all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color <> 'red';
    -- List all the people in the person table where their favorite color is not red and is not blue.
WHERE favorite_color <> 'red' AND favorite_color <> 'blue';
    -- List all the people in the person table where their favorite color is orange or green.
WHERE favorite_color = 'orange' OR favorite_color = 'green';
    -- List all the people in the person table where their favorite color is orange, green or blue (use IN).
WHERE favorite_color IN  ('orange', 'green', 'blue');
    -- List all the people in the person table where their favorite color is yellow or purple (use IN).
WHERE favorite_color IN  ('yellow', 'purple');