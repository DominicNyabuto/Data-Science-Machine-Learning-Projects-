# Data-Science-Machine-Learning-Projects


## Overview

This is my Data Science & Machine Learning Projects repository. It serves as a portfolio demonstrating a deep understanding of the underlying mathematics (Calculus, Linear Algebra, Probability, and Statistics) and translates them into applied, end-to-end data science pipelines. I've structured the repo to prove that the fundamental building blocks of DS, AI and ML were studied, understood, and applied. 
Here is how the core mathematical subjects map to the practical models built in this repo:
- Linear Algebra: Applied in data representations, dimensionality reduction, and the matrix operations underlying Multiple Linear Regression, Ridge, and Lasso (Project 2).
- Calculus: Utilized in optimizing loss functions via gradient descent, heavily showcased in the mathematical intuition behind Gradient Boosting (Project 5).
- Probability & Statistics: The backbone of hypothesis testing (Chi-square tests in Project 7), statistical modeling (AR/ARMA time-series in Project 3), and probabilistic outcomes in Logistic Regression (Project 4).


**Core Applied Data Science Skills**
- Data Engineering & Wrangling: Querying relational (SQLite) and NoSQL (MongoDB) databases, parsing JSON streams, and building robust ETL pipelines.
- Exploratory Data Analysis (EDA): Correlation analysis, visualization, and feature engineering.
- Machine Learning Modeling: Supervised (Regression, Classification) and Unsupervised Learning (Clustering).
- Advanced Techniques: Addressing class imbalance, handling overfitting through regularization, and ensemble methods.
- Production & Deployment: Test-Driven Development (TDD), building Python packages, and deploying interactive dashboards.


## Project Portfolio

The repository is divided into two distinct units, progressively scaling from foundational ML workflows to production-ready systems.

### UNIT 1: Foundations, Regression, and Classification


#### Project 1: Hands-on Data Science in the Mexican Real Estate Market

- **Concepts**: Data Cleaning, EDA, Correlation Analysis, Visualization.
- **Description**: This project focuses on foundational data science workflow. It utilizes real estate data from Mexico City which is loaded, cleaned, and visualized to showcase the property listings. The project then dives into quantifying relationships among variables using correlation analysis to explore if property prices are influenced more by size or location. This then helps in the creation of a predictive model.



#### Project 2: Predicting Housing Prices in Buenos Aires with Linear Regression

- **Concepts**: Supervised Learning, Linear Regression, Overfitting, Regularization (Ridge/Lasso).
- **Description**: This is a predictive modeling project that predicts housing prices in Buenos Aires. It involves preparing data for modeling, building initial linear regression models, and confronting the reality of overfitting. It address model variance using Ridge and Lasso regularization, proving an understanding of model generalization rather than just fitting numbers.
  

#### Project 3: Time Series Modeling of Air Quality in Nairobi

- **Concepts**: Time-Series Analysis, NoSQL (MongoDB), Lagged Regression, AR & ARMA Models.
- **Description**: This project deals with time-indexed data. Using air quality measurements from Nairobi stored in MongoDB, we query, prepare, and forecast time series data. The project builds from simple lagged regression up to Autoregressive (AR) and ARMA models.
  

#### Project 4: Predicting Earthquake Damage in Nepal with Classification Models

- **Concepts**: SQL (SQLite), Classification, Logistic Regression, Decision Trees, Discrete Metrics.
- **Description**: Entails the use of classification algorithms to predict earthquake damage to buildings in Nepal. This project covers the full pipeline: querying relational databases, processing the data, training Logistic Regression and Decision Tree models, and evaluating them using metrics appropriate for discrete outcomes. It places ML in a real-world humanitarian decision-making context.



 
### UNIT 2: Ensembles, Unsupervised Learning, and Deployment


#### Project 5: Random Forests and Gradient Boosting for Bankruptcy Prediction

- **Concepts**: JSON parsing, Ensemble Methods, Random Forests, Gradient Boosting, Class Imbalance, Pipelines.
- **Description**: Entails advanced ensemble architectures using corporate bankruptcy records from Poland and Taiwan. Involves handling highly imbalanced datasets and building pipelines using Random Forest and Gradient Boosting classifiers. The primary focus is bridging the gap between a working notebook model and a robust prediction pipeline.

#### Project 6: Unsupervised Learning for Consumer Finance Segmentation

- **Concepts**: Unsupervised Learning, Clustering (K-Means), Dimensionality Reduction, Latent Structures.
- **Description**: Focuses on segmentation of consumer finance data by exploring how clustering algorithms group individuals based on latent financial behaviors. This project highlights a crucial data science philosophy: clustering results are analytical constructs, not ground truth, making model interpretability as important as the math itself.

#### Project 7: Experimentation and Decision-Making with Applicant Data

- **Concepts**: A/B Testing, ETL Pipelines, Hypothesis Testing (Chi-Square), Interactive Dashboards.
- **Description**: Focuses on statistical experimentation using data stored in MongoDB. Entails building robust ETL pipelines and test hypotheses using chi-square statistics to determine the efficacy of interventions. The results are communicated via interactive web dashboards (Plotly Dash). The focus is not on prediction but rather efficacy of real-word intervention strategies. 

#### Project 8: Financial Volatility Modelling and End-to-End Deployment

- **Concepts**: GARCH Models, Test-Driven Development (TDD), Software Engineering, Model Deployment.
- **Description**: Modelling financial volatility using GARCH on live market data with a focus on Software Engineering for ML. The project applies Test-Driven Development (TDD) to ensure code reliability, ensuring a reproducible, packaged, and API-accessible system ready for production deployment.


# Tech Stack

- **Languages**: Python 3.x
- **Data Manipulation & Math**: pandas, NumPy, SciPy
- **Machine Learning**: scikit-learn, statsmodels, category_encoders
- **Databases & Data Formats:** MongoDB (NoSQL), PostgreSQL & SQLite (SQL), JSON, CSV
- **Data Visualization:** Matplotlib, Seaborn, Plotly, Dash (for dashboards), Streamlit
- **Engineering & Deployment**: pytest (TDD), FastAPI / Flask, Git/GitHub


# Acknowledgments

The project structures, and problem statements in this repository are heavily inspired by the coursework of the WorldQuant University (WQU) Applied Data Science Lab. This repository represents my personal implementation, continuous learning, and coding execution of their curriculum.
