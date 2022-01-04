### Rock Histrory 

This project have as objective:

Find usefull information 
Answer the question: wich artist have the longest career and more numbers of songs release?

## Information 

After review the data, is no necessary to clean any NaNs or other values, we pretend to analyse artist as a hole and not the song, for this reason we create new rows with information regarding the artist:

release: column with 1 as Numeric value, to make som calculations. 

first_year: firts year artist release a song. 

last_year: last year asrtist release a song.

yearscareer: substraction of first_year over last_year.

meanpopularity: mean of popularity of all songs release by the artist.

totalsongsartistyear: total songs release by year for the artist.

totalsongartist: total song release by the artist in all the careear.

rateartistreleaseyear: Rate of song release by the artist by year comparing all the release over the careear. 

rateartistrelease: Rate of song release by the artist comparing all the song release that year.

totalsongsyear: Total song release by year (all artist). 


<img width="737" alt="image" src="https://user-images.githubusercontent.com/72528803/148130514-ce75bfe7-a10e-4536-ab1f-a5eb1b0aa9f9.png">

## Analysis


As we have several artis over the year we make a filter of artist that release more that 15 song over the career.

We compare the popularity of the artist with the songs release over the career  

<img width="285" alt="image" src="https://user-images.githubusercontent.com/72528803/148133350-c80206ab-9bd7-4174-a9a7-b983616821e5.png">

<img width="282" alt="image" src="https://user-images.githubusercontent.com/72528803/148132086-ca40a3ea-ddeb-46da-8fdc-8cc60344c9e4.png">



<img width="290" alt="image" src="https://user-images.githubusercontent.com/72528803/148127882-5abf2521-3825-4619-a97c-c67fab495fce.png">



<img width="290" alt="image" src="https://user-images.githubusercontent.com/72528803/148127968-b644297c-7ab8-4675-ac49-4b67d6c78b72.png">



## Conclutions

The popularity and the career time are not related, either the amomg of song release over the career.   

Some artist have special release after the band breackup, death of a member or artist death, this create a discrepancy of years in the artist career. 

