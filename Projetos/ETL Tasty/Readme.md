# Tasty Project 

Food is a universal topic, irrespective of countries, generations, cultures or interst. From the arrival of internet the food topic is a increase interest for people are constantly looking new recipes, ingredients, videos and photos for food, and other food-related information. Bussinesses are also looking how to attract customers by displaying video with new recipes, fast recipes, few ingredients, exotic ingredientes or using food-related information. 

Tasty is a food recipe application. Though Tasty was originally started as a Facebook page, it quickly rose in popularity. Currently, it has a website https://tasty.co/, as well as pages on other social media platforms like Youtube and Instagram. At its core, Tasty is a food recipe application that provides textual and video-based recipes. In addition, it allows users to search for recipes by name, ingredients, or tags.


## This project have as objective: 
1. Extract information from a Api  
2. Transform and clean information to useful Dataset      
3. Load information in SQLPostgress Database   
4. Create a Tableau dashboard to visualise the data


## Extract information

The information from the Tasty API was extracted to Python through the endpoints GET method. For more information regarding the API functionality and the information available you can acces the following links: 

How to Use the Tasty API: https://rapidapi.com/blog/tasty-api-with-java-python-php-ruby-javascript-examples/

Tasty API Documentation: https://rapidapi.com/apidojo/api/tasty/

In this project was used two enpoints to extract all the recepies avalilable from the Tasty APi. With the enpoint "tags/list" was requested a list of all available tags, for each of the avliable tags was requeted all the recepies available per Tag using the enpoint "recipes/list", getting the name of recipe, description, steps by step to prepare the recepie, ingredients, units and measurement, nutrition information, and mush ore information for the recipes.  


##  Transform and Clean information 

