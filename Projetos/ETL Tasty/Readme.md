# ETL TASTY

This project have as objective:  
1. Extract information from the Tasty API,  https://rapidapi.com/apidojo/api/tasty/.  
2. Process the information to create usefulls Datasets   
3. Load the information into a POSTGRESS SQL Database
4. Answer the question:  Most used ingredients in recipe per Country?

## Extraction Process 

The Tasty API have difernts Enpoints to request diferents type of information, in the documentation link https://rapidapi.com/blog/tasty-api-with-java-python-php-ruby-javascript-examples/ you could review the different endpoints and the returned information of each Enpoint, for this project was used the  following Endpoints: 'tags/list' and 'recipes/list'. 

Setup API information requirements to use enpoints  

<img width="399" alt="image" src="https://user-images.githubusercontent.com/72528803/152624008-382ffa62-aecb-41af-ac74-3bb7aeb57154.png">

Request a list with all the availables Tags for recipes,  using the Enpoint 'tags/list'  

<img width="409" alt="image" src="https://user-images.githubusercontent.com/72528803/152624033-7a1af9b2-fbab-4097-9a68-debd8b9a38c5.png">

Get a response of 302 Tags 

With each tag  request a list f recipes,  using the Enpoint 'recipes/list'

<img width="545" alt="image" src="https://user-images.githubusercontent.com/72528803/152624411-924bcbd9-d3ec-406c-be8e-d0d1fb099c7f.png">

Get a response of 3526 recipes 


## Process Information 

All the response information is Json type, Analyzed the information response, the Api return a list and each element of the response list could be a recipe or other list of recipes, through a loop we iterated this list  and created a DataFrame with the desired information.

The resultant DataFrame contain 82941 rows 24 columns, from this  DatasFrame created the follow Datasets with unique information:
  1.  Country 
      
      <img width="139" alt="image" src="https://user-images.githubusercontent.com/72528803/152625678-323a264a-1c9f-402c-a224-2c347a397831.png">
  2.  ingredients 
      
      <img width="210" alt="image" src="https://user-images.githubusercontent.com/72528803/152625748-32967e10-dfb7-48bf-a585-412b2eb768e5.png">
  3.  measurements
      
      <img width="113" alt="image" src="https://user-images.githubusercontent.com/72528803/152625782-6b68bb8d-5299-4fa7-a8a1-8b6d28734c92.png">
  4.  recipes 
      
      <img width="601" alt="image" src="https://user-images.githubusercontent.com/72528803/152625933-a37d13d0-8d60-4d0e-8d47-3112b24683d0.png">
  5.  ratings 
      
      <img width="457" alt="image" src="https://user-images.githubusercontent.com/72528803/152625812-50569c5f-3155-4f87-a68d-b870fb8657bc.png">
  6.  nutrition
      
       <img width="551" alt="image" src="https://user-images.githubusercontent.com/72528803/152625827-d7885481-4f9f-4da9-94c1-dddcfbc6d808.png">
  7.   ingredientsquantitymeasurments
      
       <img width="614" alt="image" src="https://user-images.githubusercontent.com/72528803/152625974-49bb854d-3f2b-46d6-87f7-448d945d0a60.png">


## Load Information to POSTGRESS Database

To Load the informatio into Posstgress Database used psycopg2 and sqlalchemy libraries 

<img width="638" alt="image" src="https://user-images.githubusercontent.com/72528803/152626050-44b17c52-ae92-428d-b041-bfcbee8c996d.png">

Tables created in Postgress Database 

<img width="206" alt="image" src="https://user-images.githubusercontent.com/72528803/152626140-d5b88044-953b-4d72-9a1c-d3c2a9142757.png">

Table relationship entity diagram 

<img width="425" alt="image" src="https://user-images.githubusercontent.com/72528803/152626290-c1e8869b-82e6-4cf3-a372-610c283e74c7.png">

## Querys 

With all the information in Postgress created some  querys to extract som information   

Countrys with more number of recipes 

<img width="168" alt="image" src="https://user-images.githubusercontent.com/72528803/152626328-e840c2d6-385a-495a-bc2b-aad491c5cbe1.png">

Ingredients more used in Brazil recipes 

<img width="305" alt="image" src="https://user-images.githubusercontent.com/72528803/152626359-f8d9e0cf-eb2c-4881-9cd1-2aba1a8bde3a.png">

Most used ingredintes inrecipes

<img width="179" alt="image" src="https://user-images.githubusercontent.com/72528803/152626382-1d5772a8-7773-42cb-86d8-c28e09a3d540.png">

Recipes with best score

<img width="421" alt="image" src="https://user-images.githubusercontent.com/72528803/152626410-fa733de3-4b1f-4abb-91fd-738f7d99dffd.png">

The SQL Querys used are in the folder Script Postgress https://github.com/AndresCBF/IronHack/tree/main/Projetos/ETL%20Tasty/Script%20Postgres

