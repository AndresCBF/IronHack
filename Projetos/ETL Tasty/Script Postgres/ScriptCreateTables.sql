create database tasty;

DROP TABLE IF EXISTS tasty.public.ingredients;
CREATE TABLE tasty.public.ingredients (
	Ingredient_id integer PRIMARY KEY,
	Ingredient_name text
	);

DROP TABLE IF EXISTS tasty.public.measurements;
CREATE TABLE tasty.public.measurements (
	Unit_id integer PRIMARY KEY,
	Unit_name text
	);
	
DROP TABLE IF EXISTS tasty.public.nutrition;
CREATE TABLE tasty.public.nutrition (
	Nutrition_id integer PRIMARY KEY,
	Recipe_calories integer,
	Recipe_carbohydrates integer,
	Recipe_protein integer,
	Recipe_fat integer,
	Recipe_fiber integer,
	Recipe_sugar integer            
	);
	
DROP TABLE IF EXISTS tasty.public.ratings;
CREATE TABLE tasty.public.ratings (
	Ratings_id integer PRIMARY KEY,
	Recipe_score float,
	Recipe_positivevotes integer,
	Recipe_negativevotes integer,
	Recipe_totalvotes integer         
	);
	
DROP TABLE IF EXISTS tasty.public.country;
CREATE TABLE tasty.public.country (
	Country_id integer PRIMARY KEY,
	Country_tags text
	);
	
DROP TABLE IF EXISTS tasty.public.recipes;
CREATE TABLE Tasty.public.recipes (
	Recipe_id integer PRIMARY KEY,
	Recipe_name text,
	Recipe_servings text,
	Recipe_instructions text,
	Recipe_totalingredients integer,
	Recipe_video text,
	Recipe_tags text,
	Country_id integer,
	FOREIGN KEY (Country_id) REFERENCES tasty.public.country(Country_id),
	FOREIGN KEY (Recipe_id) REFERENCES tasty.public.nutrition(Nutrition_id),
	FOREIGN KEY (Recipe_id) REFERENCES tasty.public.ratings(Ratings_id)
	);
	
DROP TABLE IF EXISTS tasty.public.ingredientsquantitymeasurments;
CREATE TABLE tasty.public.ingredientsquantitymeasurments (
	Recipe_id integer,
	Ingredient_id integer,
	Unit_id integer,
	Ingredient_quantity text,
	Ingredient_name text,
	Unit_name text,
	Ingredient_text text,
	FOREIGN KEY (Recipe_id) REFERENCES tasty.public.recipes(Recipe_id), 
	FOREIGN KEY (Ingredient_id) REFERENCES tasty.public.ingredients(Ingredient_id),
	FOREIGN KEY (Unit_id) REFERENCES tasty.public.measurements(Unit_id)
	);