# Shark Attack Project 

This project have as objective: 
1. Clean up  data to make it usful 
2. Find usefull information whitin the clean data 
3. Answer the question: The fatal Shark attacks are incresing or decresing during the time?

## Clean up 
The data set have several issues, the bigger issue was 65 % of the Rows are fill with NANs or missing information, reviewing the information clean the obsolete data, emapty columns and rows with more that have  20% of the information as NANs. 

The second bigger issue is the quality of the information  in the Columns, as example the columns "age"and "year" have some information as text other as numeric, and other as alphanumeric and NANs, treated the information to get only numerical data and NANs, the NANs where treat creating a new column with a range, get this as "unknown". 

Other columns have similar issue with upper, lower letters, special characters, creatinf duplicated information or invalid information, after treating this, we get valiuble information i all our Data sets    


## Data Analyze 

The USA have the higher ammount of shark attacks reports, folow by Australia and South Africa 

![Attacks per Country](https://user-images.githubusercontent.com/72528803/146652087-a51eda90-5cdf-4822-a74e-46a7f0d3f0e8.jpg)

As the USA is the country with higher amount of reports for attacks, we use the informaion in USA to see is the number of fatal attacks are incressing or decressing during time 

![Plot USA persentual deadly attacks per decade](https://user-images.githubusercontent.com/72528803/146651204-9c6dcb67-3a0b-4c98-b408-e40710500f9f.jpg)
![Plot USA deadlly attacks per decade](https://user-images.githubusercontent.com/72528803/146653120-c27125bc-c490-44fb-bdaa-5b7f1dfb8291.jpg)


We have an increase of reports during the decades of 1950s, and the number of fatal attacks do not increasse as the number of reports   

![Plot USA persentual deadly attacks per decade +1960](https://user-images.githubusercontent.com/72528803/146651207-3300a689-0053-4230-89f3-3a4f9c6d2a76.jpg)
![Plot USA deadlly attacks per decade +1960](https://user-images.githubusercontent.com/72528803/146651212-20d8a942-027d-4e05-9df1-ffa830a1827a.jpg)


## Conclutions  

We can conclued that the numer of reports during times are incressing, the numeber of fatal attacks continue stable during the time, with this the rate of fatal attacks is decresing during the time. 


## Next steps 
1. Determine the location in USA where have more attacks and if this location are in the migration path of the sharks 
2. Determine the dates of the attacks and if this dates correspondes to the migration dates     
