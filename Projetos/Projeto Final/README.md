# Local Frog Discovery Tool
*Andrés Bohórquez*

*DAPT-Nov21, São Paulo, 07/05/2022*

## Content
- [Project Description](#project-description)
- [Hypotheses / Questions](#hypotheses-/-questions)
- [Dataset](#dataset)
- [Cleaning](#cleaning)
- [Analysis](#analysis)
- [Model Training and Evaluation](#model-training-and-evaluation)
- [Conclusion](#conclusion)
- [Future Work](#future-work)
- [Workflow](#workflow)
- [Organization](#organization)
- [Links](#links)
<a name="project-description"></a>

## Project Description

Create a species distribution model (SDM) for frog species litoria fallax across Australia using weather data from the TerraClimate dataset.

<center>
<img src="pictures/Litoria_fallax.jpg" width="500" height="340"> 


| Locations                     | Spatial Res        | Species          | Satellite Data                                                |
|-------------------------------|--------------------|------------------|---------------------------------------------------------------|
| Australia                     | Coarse (4km)  | 1 species  | TerraClimate    

</center>

A species distribution model is a specific type of machine learning model that aims to predict the distribution of a biological species across geographic space and time. Such models have become increasingly important in conservation efforts globally to better understand and map the habitats of species of interest, particularly threatened or endangered species. 

Frogs are poorly served by existing species distribution models. They have very localized distributions, more restricted than suggested by a potentially suitable   habitat, and therefore existing models struggle to represent their range accurately.

<a name="hypotheses-/-questions"></a>

## Hypotheses / Questions

Why frogs?:
* Frogs are incredibly sensitive to environmental changes, so any changes in their species distribution may indicate an underlying change to biodiversity in the area.
* Frogs are an indicator species. This means they are a go-to for scientists wanting to find out more about the environmental health of a particular ecosystem.
* Because they have permeable skin, frogs are very sensitive to pollutants, and because they can live on both land and in the water, they are a good indicator of the health of these two different environments.

<a name="dataset"></a>

## Dataset

The datasets were optain from EY 2022 Better Working World Data Challenge Level 1: Local Frog Discovery Tool [here](https://challenge.ey.com/challenges/level-1-local-frog-discovery-tool-SXnArnHsm/data-description)
 * Global Biodiversity Information Facility [GBIF](https://www.gbif.org/pt/dataset/47c9fee2-619a-481c-a114-386bc4748256) : Subset of the GBIF occurrence   dataset which combines data from a wide array of sources, including specimen-related data from natural history museums, observations from citizen science networks, and automated environmental surveys.
 *  [TerraClimate](https://planetarycomputer.microsoft.com/dataset/terraclimate) : TerraClimate is a dataset of monthly climate and climatic water balance for global terrestrial surfaces from 1958-2019. These data provide important inputs for ecological and hydrological studies at global scales that require high spatial resolution and time-varying data.


<a name="cleaning"></a>

## Cleaning

Describe your full process of data wrangling and cleaning. Document why you chose to fill missing values, extract outliers, or create the variables you did, etc, as well as your thinking process.

<a name="analysis"></a>

## Analysis

* Overview the general steps you will go through to analyze your data in order to test your hypothesis.
* Document each step of your data exploration and analysis.
* Include charts to demonstrate the effect of your work. 
* If you use ML in your final project, describe your feature selection process.

<a name="model-training-and-evaluation"></a>

## Model Training and Evaluation
*Include this section only if you chose to include ML in your project.*
* Describe how you trained your model, the results you obtained, and how you evaluated those results.

<a name="conclusion"></a>

## Conclusion

* Litorial Fallax frogs in Autralia prosper in more humid and warmer environments that the other spices.

* Reducing the variables with PCA method reduce the score for the models. 


<a name="future-work"></a>

## Future Work

* Create a local classification model (a region or sub-region), test the local model on the other regions to see the results.

* Treat TerraClimate data as a time series to discover climate seasonality and how it affects the appearance of  frog.

* Configure Hyperparameters for the classification models and see if you get an improvement

* Use other methods of reducing variables, such Lasso to see if you get better results.


<a name="workflow"></a>

## Workflow
Outline the workflow you used in your project. What were the steps?
How will you test the success of your analysis or algorithm?

<a name="organization"></a>

## Organization
How did you organize yourself? Did you use any tools?

<a name="links"></a>

## Links
Include the links to your repository, slides and trello. Feel free to include any other links associated to your project. 

[Repository](https://github.com/)  
[Slides](https://slides.com/)  
