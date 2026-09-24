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

The repository is divided into two distinct units, progressively scaling from foundational ML workflows to complex, production-ready systems.
🔹 UNIT 1: Foundations, Regression, and Classification
Project 1: Hands-on Data Science in the Mexican Real Estate Market

    Concepts: Data Cleaning, EDA, Correlation Analysis, Visualization.

    Description: This project introduces the foundational data science workflow. Using real estate data from Mexico City, we load, clean, and visualize property listings. By quantifying relationships among variables using correlation analysis, we answer a central question: Is property price driven more by size or location? This establishes the baseline intuition for predictive modeling.

    1. Earthquake Damage Classification in Kavrepalanchok, Nepal. Link: https://github.com/DominicNyabuto/Earthquake-Damage-Classification-Kavrepalanchok-Nepal
2. Air quality prediction in Nairobi, Kenya: Link: https://github.com/DominicNyabuto/Air-Quality-Prediction-Nairobi
3. Bankruptcy Prediction in Poland: Link: https://github.com/DominicNyabuto/Predict-Bankruptcy-in-Poland

Project 2: Predicting Housing Prices in Buenos Aires with Linear Regression

    Concepts: Supervised Learning, Linear Regression, Overfitting, Regularization (Ridge/Lasso).

    Description: Transitioning to predictive modeling, this project predicts housing prices in Buenos Aires. It involves preparing data for modeling, building initial linear regression models, and confronting the reality of overfitting. We address model variance using Ridge and Lasso regularization, proving an understanding of model generalization rather than just fitting numbers.

Project 3: Time Series Modeling of Air Quality in Nairobi

    Concepts: Time-Series Analysis, NoSQL (MongoDB), Lagged Regression, AR & ARMA Models.

    Description: Moving away from independent and identically distributed (I.I.D.) data, this project deals with time-indexed data. Using air quality measurements from Nairobi stored in MongoDB, we query, prepare, and forecast time series data. The project builds from simple lagged regression up to Autoregressive (AR) and ARMA models, solidifying the concept that in time series, the past is a feature.

Project 4: Predicting Earthquake Damage in Nepal with Classification Models

    Concepts: SQL (SQLite), Classification, Logistic Regression, Decision Trees, Discrete Metrics.

    Description: Introducing classification algorithms to predict earthquake damage to buildings in Nepal. This project covers the full pipeline: querying relational databases, processing the data, training Logistic Regression and Decision Tree models, and evaluating them using metrics appropriate for discrete outcomes. It places ML in a real-world humanitarian decision-making context.

🔹 UNIT 2: Ensembles, Unsupervised Learning, and Deployment
Project 5: Random Forests and Gradient Boosting for Bankruptcy Prediction

    Concepts: JSON parsing, Ensemble Methods, Random Forests, Gradient Boosting, Class Imbalance, Pipelines.

    Description: Scaling up to advanced ensemble architectures using corporate bankruptcy records from Poland and Taiwan. We handle highly imbalanced datasets and build complex pipelines using Random Forest and Gradient Boosting classifiers. The primary focus is bridging the gap between a working notebook model and a robust prediction pipeline.

Project 6: Unsupervised Learning for Consumer Finance Segmentation

    Concepts: Unsupervised Learning, Clustering (K-Means), Dimensionality Reduction, Latent Structures.

    Description: Shifting to data without a target variable, we segment consumer finance data. We explore how clustering algorithms group individuals based on latent financial behaviors. This project highlights a crucial data science philosophy: clustering results are analytical constructs, not ground truth, making model interpretability as important as the math itself.

Project 7: Experimentation and Decision-Making with Applicant Data

    Concepts: A/B Testing, ETL Pipelines, Hypothesis Testing (Chi-Square), Interactive Dashboards.

    Description: Shifting from pure prediction to statistical experimentation. Using WQU applicant data stored in MongoDB, we build robust ETL pipelines and test hypotheses using chi-square statistics to determine the efficacy of interventions. The results are communicated via interactive web dashboards. The focus shifts from "what will happen" to "did this intervention actually work?"

Project 8: Financial Volatility Modelling and End-to-End Deployment

    Concepts: GARCH Models, Test-Driven Development (TDD), Software Engineering, Model Deployment.

    Description: The capstone project of the curriculum. We model financial volatility using GARCH on live market data. However, the true focus is on Software Engineering for ML. The project applies Test-Driven Development (TDD) to ensure code reliability, resulting in a reproducible, packaged, and API-accessible system ready for production deployment.

💻 Tech Stack & Tools

    Languages: Python 3.x

    Data Manipulation & Math: pandas, NumPy, SciPy

    Machine Learning: scikit-learn, statsmodels, category_encoders

    Databases & Data Formats: MongoDB (NoSQL), SQLite (SQL), JSON, CSV

    Data Visualization: Matplotlib, Seaborn, Plotly, Dash (for dashboards)

    Engineering & Deployment: pytest (TDD), FastAPI / Flask, Git/GitHub
    Python, SQL, Postgres, MongoDB, Bash, Steamlit, Plotly Dash, Tableau

🚀 How to Use This Repository

    Clone the repository:
    Bash

    git clone https://github.com/YourUsername/Data-Science-Machine-Learning-Projects-.git
    cd Data-Science-Machine-Learning-Projects-

    Create a virtual environment & install dependencies:
    Bash

    python -m venv venv
    source venv/bin/activate  # On Windows use: venv\Scripts\activate
    pip install -r requirements.txt

    Explore the projects:
    Navigate into any project folder and launch Jupyter Notebook to view the code, visualizations, and statistical breakdowns.
    Bash

    jupyter notebook

🙏 Acknowledgments

The datasets, project structures, and problem statements in this repository are heavily inspired by the coursework and curriculum of the WorldQuant University (WQU) Applied Data Science Lab. This repository represents my personal implementation, continuous learning, and coding execution of their world-class curriculum.
