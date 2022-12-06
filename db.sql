CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  password VARCHAR(50)
);

CREATE TABLE ingredients(
	ingredients_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	price INT,
	origin VARCHAR(50)
);

CREATE TABLE recipes(
  recipe_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  user_id INTEGER NOT NULL REFERENCES users(user_id),
  content TEXT
  );

  CREATE TABLE occasions(
	occasions_id SERIAL PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE ingredients_recipies (
	ingredients_recipies_id SERIAL PRIMARY KEY,
  ingredients_id INTEGER NOT NULL REFERENCES ingredients(ingredients_id),
  recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id)
);

CREATE TABLE recipes_occasion (
	recipes_ocasion_id SERIAL PRIMARY KEY,
  recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id),
  occasions_id INTEGER NOT NULL REFERENCES occasions(occasions_id)
);

INSERT INTO users (email, password)
VALUES ('jenny@aol.com', 'starsRawesome');
('clair@yahoo.com', '34ytd'),
('gabe@gmail.com', 'opi8655');

INSERT INTO ingredients(name, price, origin)
VALUES ('bannans', 2, 'south america'),
('salt', 3, 'the earth'),
('corn', 6, 'the farm');

SELECT * FROM users;

INSERT INTO recipes (user_id, name, content)
VALUES(1, 'ashley', 'dhlifuasdiofh');

INSERT INTO ingredients_recipies(ingredients_id, recipe_id)
VALUES (1,1),
(2, 1),
(3, 1);

INSERT INTO occasions(name)
VALUES('CHRISTMAS'),
('THANKSGIVING'),
('HALLOWEEN');

INSERT INTO recipes_occasion(recipe_id, occasions_id)
VALUES (1,1),
(1,2),
(1,3);