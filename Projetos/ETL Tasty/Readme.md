# Tasty Project 

Food is a universal topic, irrespective of countries, generations, cultures or interst. From the arrival of internet the food topic is a increase interest for people are constantly looking new recipes, ingredients, videos and photos for food, and other food-related information. Bussinesses are also looking how to attract customers by displaying video with new recipes, fast recipes, few ingredients, exotic ingredientes or using food-related information. 

Tasty is a food recipe application. Though Tasty was originally started as a Facebook page, it quickly rose in popularity. Currently, it has a website https://tasty.co/, as well as pages on other social media platforms like Youtube and Instagram. At its core, Tasty is a food recipe application that provides textual and video-based recipes. In addition, it allows users to search for recipes by name, ingredients, or tags.


## This project have as objective: 
1. Extract information from a Api  
2. Transform and clean information to useful Dataset      
3. Load information in SQLPostgress Database   
4. Create a Tableau dashboard to visualize information


## Extract information

The information from the Tasty API was extracted to Python through the endpoints GET method. For more information regarding the API functionality and the information available you can acces the following links: 

How to Use the Tasty API: https://rapidapi.com/blog/tasty-api-with-java-python-php-ruby-javascript-examples/

Tasty API Documentation: https://rapidapi.com/apidojo/api/tasty/

In this project was used two enpoints to extract all the recepies avalilable from the Tasty APi. With the enpoint "tags/list" was requested a list of all available tags, for each of the avliable tags was requeted all the recepies available per Tag using the enpoint "recipes/list", getting the name of recipe, description, steps by step to prepare the recepie, ingredients, units and measurement, nutrition information, and others informations. 

The information recibe from the Api is in Json format, with which was created a DataFrame with the follow information:

'Recipe_id', 
'Recipe_name', 
'Recipe_score', 
'Recipe_positivevotes', 
'Recipe_negativevotes', 
'Recipe_totalvotes', 
'Recipe_country', 
'Recipe_servings', 
'Recipe_instructions', 
'Recipe_totalingredients', 
'Ingredient_text', 
'Ingredient_id', 
'Ingredient_name', 
'Ingredient_quantity', 
'Unit_id', 
'Unit_name', 
'Recipe_calories', 
'Recipe_carbohydrates', 
'Recipe_protein', 
'Recipe_fat', 
'Recipe_fiber', 
'Recipe_sugar', 
'Recipe_video', 
'Recipe_tags'.


## Transform and Clean information 

With the created DataFrame the data were cleaned, treated duplicate data and treated missing values, with this where created diferents Datasets separating the information in diferents Datasets reducing the size and weight, aviding duplicate information. 

the following dates were created with the following information in each: 

country Dataset:  
'Country_id',
'Country_tags'	


tagg_recepies Dataset:  
'Recipe_id', 
'Recipe_tags'

ratings Dataset:  
'Ratings_id', 
'Recipe_score', 
'Recipe_positivevotes',
'Recipe_negativevotes',
'Recipe_totalvotes'

nutrition Dataset:  
'Nutrition_id',
'Recipe_calories',
'Recipe_carbohydrates',
'Recipe_protein',
'Recipe_fat',
'Recipe_fiber',
'Recipe_sugar'

measurements Dataset:  
'Unit_id',
'Unit_name'	

ingredients Dataset:  
'Ingredient_id',
'Ingredient_name'

ingredientsquantitymeasurments Dataset:  
'Recipe_id', 
'Ingredient_id', 
'Unit_id', 
'Ingredient_quantity', 
'Ingredient_name', 
'Unit_name', 
'Ingredient_text'

recipes Dataset:  
'Recipe_id', 
'Recipe_name', 
'Recipe_servings', 
'Recipe_instructions', 
'Recipe_totalingredients', 
'Recipe_video', 
'Recipe_tags'

The created Datasets are available Kaggel in the foloing link:  https://www.kaggle.com/andrescbohorquez/tasty-recipes

## Load information

Using the python librarys psycopg2 and sqlalchemy, the created datases were lodad as tables in to PostgreSQL to create a Schema Database, as the tables were created with the  primarys keys, is generated a Entity Relationship Diagram of the table:

<img width="320" alt="image" src="https://user-images.githubusercontent.com/72528803/156837076-31f766f8-75ff-402e-81de-ab904fb5f3ef.png">



## Visualize information


