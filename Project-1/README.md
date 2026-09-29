# Project 1: Predicting Apartment Prices in Mexico City

## Overview
The real estate market is a crucial aspect of any economy and understanding the factors that impact property prices can be of immense value to both buyers and sellers. The purpose of this project is to create a predictive model that estimates the prices of apartments in Mexico City based on various features such as surface covered, location, and borough. This project is focused on predictive data science and aims to provide insights into the real estate market in Mexico City.

## Data Sources
The data used in this project was obtained from open sources and contains information on properties in Mexico City. The data was split into 5 CSV files and was pre-processed to remove any missing or irrelevant information. The main columns of interest after the cleaning process include:

* Price
* Surface covered
* Latitude and longitude
* Boroughs
The cleaning process was extensively documented in the project notebooks to ensure transparency and reproducibility.

## Methodology 
Two notebooks were used for this project, the first one was used for the initial walkthrough and wrangling, while the second was for modeling and deployment.
The following methods were used in this project:

* Ridge Regression: Ridge Regression is a type of linear regression that adds a penalty term to the loss function to prevent overfitting. Overfitting occurs when a model learns the noise in the data instead of the underlying patterns, leading to poor generalization performance on new data. Ridge Regression adds a penalty term that discourages large coefficients and helps to prevent overfitting.

* OneHotEncoder: This is a feature preprocessing technique that converts categorical variables into a binary representation suitable for use in a machine learning model. Categorical variables are variables that can take on one of a limited number of values. In this project, the borough column was converted into a binary representation using OneHotEncoder.

* SimpleImputer: This is a feature preprocessing technique that replaces missing values with a specified statistic (e.g. mean, median, etc.). Missing values can be problematic for machine learning models as they reduce the amount of data available for learning. SimpleImputer replaces missing values with either the mean or median value of the column, depending on the specified strategy.


## Results and Outcomes
The results of this project were communicated as follows:

* A visualization of the most important boroughs in Mexico City based on the model's predictions. This visualization provides insights into which boroughs have the highest and lowest predicted apartment prices.

* A function (make_prediction) that takes 4 arguments (surface covered, latitude, longitude, and borough) and returns the model's prediction for an apartment price. This function can be used to make predictions for new apartments based on their features.

* An interactive widget made with Jupyter widgets, which can be adjusted to see how predicted apartment prices change based on different input values. This widget provides an interactive way to explore the model's predictions and understand the impact of various features on apartment prices.

## Conclusion
In conclusion, this project aimed to create a predictive model for apartment prices in Mexico City using data science techniques. The results of the project provide insights into the real estate market in Mexico City and can be used to make informed decisions about property investments. This project serves as an example of how data science can be applied to real-world



# Predicting Apartment Prices in Mexico City

## Project Overview
This project builds an end-to-end Applied Data Science pipeline to predict real estate prices in Mexico City. By ingesting, cleaning, and mapping property data, the project explores the quantitative relationships between spatial geography, property size, and market valuation. 

## Business Objectives
* Identify the most expensive and affordable boroughs in Mexico City.
* Determine whether the surface area of a property or its geographical location has a stronger correlation with its price.
* Deploy a predictive machine learning model to estimate the price of new apartment listings.

## Methodology
1. **Data Wrangling:** Loaded real estate listings (`mexico-city-real-estate-1.csv`), dropped rows with missing spatial or price data, and removed extreme surface area outliers to ensure model robustness.
2. **Exploratory Data Analysis (EDA):** Conducted correlation analysis to measure the linear relationships between variables and utilized `plotly` to render an interactive map of apartment prices, visually revealing geographical pricing clusters.
3. **Modeling:** Designed a `scikit-learn` pipeline utilizing a `OneHotEncoder` for categorical borough data and a `Ridge` regression model. Regularization was explicitly chosen to penalize model complexity and prevent overfitting.
4. **Communication:** Extracted and visualized the model's coefficients to rank boroughs by their impact on property price. 

## Key Deliverables
* **Feature Importance Chart:** A bar chart visualizing the premium or discount associated with specific Mexico City boroughs.
* **`make_prediction` API:** A standalone Python function that accepts property attributes (`surface_covered`, `lat`, `lon`, `borough`) and returns a predicted USD price.
* **Interactive Dashboard:** An `ipywidgets` interface allowing stakeholders to adjust property features via sliders and dropdowns to see real-time price predictions directly within the Jupyter Notebook environment.

## Usage
Run the Jupyter Notebook cells sequentially. The final cell will render the interactive dashboard. Ensure you have `pandas`, `scikit-learn`, `matplotlib`, `plotly`, and `ipywidgets` installed in your environment.