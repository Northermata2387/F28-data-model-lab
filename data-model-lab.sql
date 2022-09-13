CREATE TABLE Users (
	user_id SERIAL PRIMARY KEY,
	userName VARCHAR(24),
	password TEXT,
	email VARCHAR(24)
);



CREATE TABLE Recipes (
	recipe_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	datetime TIMESTAMP,
	public_private BOOLEAN,
	recipeName VARCHAR(24),
	instructions VARCHAR(300)
);



CREATE TABLE Reviews (
	review_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	recipe_id INTEGER REFERENCES recipes(recipe_id),
	review VARCHAR(300)
);



CREATE TABLE Likes (
	like_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	recipe_id INTEGER REFERENCES recipes(recipe_id),
	likes BOOLEAN
);



CREATE TABLE Verified (
	verified_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	date date
);



CREATE TABLE Ocassions (
	ocassion_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
	recipe_id INTEGER REFERENCES recipes(recipe_id),
	ocassionName VARCHAR(24)
);



CREATE TABLE Ingredients (
	ingredient_id SERIAL PRIMARY KEY,
	recipe_id INTEGER REFERENCES recipes(recipe_id),
	listIngredients TEXT
);


CREATE TABLE recIngredients (
	recIngredient_id SERIAL PRIMARY KEY,
	ingredient_id INTEGER REFERENCES ingredients(ingredient_id),
	recipe_id INTEGER REFERENCES recipes(recipe_id)
);


CREATE TABLE GroceryLists (
	grocerList_id SERIAL PRIMARY KEY,
	recIngredient_id INTEGER REFERENCES recIngredients(recIngredient_id),
	user_id INTEGER REFERENCES users(user_id)
);



