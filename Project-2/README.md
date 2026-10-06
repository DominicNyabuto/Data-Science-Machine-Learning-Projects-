# Predicting Housing Prices in Buenos Aires with Linear Regression

> **Project status:** Initial analysis and model comparison implemented. Further tuning and deployment can extend this work.

## Overview

This project develops supervised machine-learning models to estimate residential property prices in Buenos Aires, Argentina. It uses two CSV extracts of property listings and applies a complete regression workflow: data validation, cleaning, exploratory analysis, feature engineering, baseline modeling, regularization, ensemble comparison, and evaluation.

The project extends the repository's foundational real-estate analysis in Project 1 by focusing on predictive modeling. It demonstrates how linear algebra, statistics, and optimization support practical machine-learning decisions, especially the trade-off between model complexity and generalization.

## Business and analytical purpose

Accurate price estimates can help buyers, sellers, agents, and analysts establish consistent benchmarks across neighborhoods and property types. The central analytical question is:

> **How accurately can property characteristics and location-related information predict a Buenos Aires listing's price in USD?**

The model is intended as a decision-support tool, not a replacement for a professional valuation. Listing prices may differ from final transaction prices, and the data may reflect market, source, and geographic biases.

## Key performance indicators

The completed project will report:

- **Mean absolute error (MAE):** Average dollar error, directly interpretable by stakeholders.
- **Root mean squared error (RMSE):** Penalizes large valuation errors and highlights model risk.
- **Mean absolute percentage error (MAPE):** Communicates relative error, with care around very low prices.
- **Coefficient of determination (R²):** Measures the proportion of price variation explained by the model.
- **Baseline comparison:** Improvement over a simple median-price or mean-price predictor.
- **Generalization gap:** Difference between training and validation performance, used to assess overfitting.

The target metric will be selected after inspecting the price distribution and business context. MAE will be the primary decision metric because it is expressed in dollars and is less dominated by extreme listings than RMSE.

## Data

The `data/` directory contains:

- `buenos-aires-real-estate-1.csv`
- `buenos-aires-real-estate-2.csv`

Each file contains 8,606 sale listings and 16 columns. The listings include apartments, houses, PH properties, and stores. Both files represent the `sell` operation and include a mixture of numeric, categorical, geographic, and identifier-like fields.

### Main fields

| Field | Role |
| --- | --- |
| `price_aprox_usd` | Candidate target: approximate listing price in USD |
| `property_type` | Property category |
| `place_with_parent_names` | Hierarchical geographic location |
| `lat-lon` | Latitude and longitude, when available |
| `surface_total_in_m2` | Total property area |
| `surface_covered_in_m2` | Covered property area |
| `rooms` | Number of rooms |
| `floor` | Floor number, primarily relevant to apartments |
| `expenses` | Reported recurring expenses |
| `price_usd_per_m2` | Price per square metre; derived from price and area |
| `price`, `currency` | Original listing price and currency |
| `properati_url` | Listing URL and record identifier |

The raw data contains important missingness: expenses and floor are frequently absent, while rooms, coordinates, and surface measurements are incomplete. These patterns will be measured before modeling rather than handled with arbitrary deletion.

## Methodology

### 1. Load, validate, and combine the data

Read both CSV files, inspect their schemas, confirm compatible columns, and combine them into one analysis table. Duplicate records and repeated listings will be checked so that the same property does not influence training and testing disproportionately.

**Why:** Reliable modeling begins with a reproducible and auditable dataset.

### 2. Define the target and scope

Restrict the analysis to valid sale listings with a usable USD price. The primary target will be `price_aprox_usd`; original currency fields will be reviewed to understand how the USD value was produced.

**Why:** A consistent target avoids mixing currencies or predicting a value that is unavailable for a meaningful portion of the sample.

### 3. Clean and quality-check variables

Inspect data types, impossible values, extreme prices, zero-area records, inconsistent covered-versus-total areas, and missing values. Derived target-leakage fields such as `price_usd_per_m2` will not be used as predictors when they are calculated from the target price.

**Why:** Cleaning improves validity, while excluding target-derived fields prevents unrealistically optimistic performance.

### 4. Explore the market

Use summary statistics and visualizations to examine price and area distributions, property-type differences, neighborhood variation, missingness, and relationships between price, size, and location. A log-scale view of price will be considered because real-estate prices are typically right-skewed.

**Why:** EDA informs transformations, identifies anomalies, and turns model results into interpretable market insights.

### 5. Engineer modeling features

Extract useful geographic levels from `place_with_parent_names`, split `lat-lon` into latitude and longitude, encode categorical variables, and select defensible numeric features. Imputation and transformations will be fitted inside a scikit-learn pipeline.

**Why:** Feature engineering converts semi-structured listing information into model-ready variables while preventing train-test contamination.

### 6. Establish a baseline

Create a simple price baseline, then fit an ordinary least squares linear regression model using a reproducible train/test split.

**Why:** Baselines show whether additional features and modeling choices produce meaningful improvement.

### 7. Address overfitting with regularization

Fit Ridge and Lasso regression models, compare their cross-validated errors with ordinary linear regression, and use regularization to assess whether coefficient shrinkage improves generalization.

**Why:** Correlated features, high-cardinality locations, and sparse encoded categories can produce unstable coefficients. Regularization controls variance and improves generalization.

### 8. Evaluate and interpret

Compare models on the same held-out test set using MAE, RMSE, MAPE, and R². Inspect residuals by property type, price range, and location, and interpret the most influential coefficients without treating correlation as causation.

**Why:** Aggregate metrics alone can hide systematic errors affecting particular types of properties or neighborhoods.

## Outputs

The completed project should produce:

- A reproducible data-preparation and modeling workflow.
- EDA plots showing price, area, property type, location, and missingness.
- A comparison table for baseline, linear regression, Ridge, and Lasso.
- Error analysis identifying where the model performs well or poorly.
- A documented recommendation for the preferred model and its limitations.

## Initial results

The executed notebook combined 17,212 listings, retained 15,196 sale listings with positive USD prices, and found no exact-row or listing-URL duplicates. Capital Federal contributed 4,638 listings across 57 neighborhoods and was used as the primary modeling cohort; 10,558 listings outside Capital Federal were retained for a geographic robustness check.

The initial comparison used a fixed 80/20 test split and three-fold cross-validation on the training set. The best cross-validation result came from Random Forest with a log-USD target, while the raw-USD Random Forest produced the lowest test-set dollar error:

| Model | Target | CV MAE (USD) | Test MAE (USD) | Test RMSE (USD) | Test MAPE | Test R² |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| Random Forest | log-USD | 58,317 | 50,936 | 113,061 | 23.8% | 0.765 |
| Random Forest | USD | 61,162 | 49,904 | 100,393 | 25.7% | 0.815 |
| Gradient Boosting | log-USD | 61,642 | 56,321 | 126,043 | 26.6% | 0.710 |
| Gradient Boosting | USD | 68,249 | 60,533 | 116,266 | 34.3% | 0.748 |
| Neighborhood/type median | USD | — | 105,443 | 221,929 | 53.6% | 0.100 |
| Global median | USD | — | 117,277 | 245,583 | 50.8% | -0.110 |

For the current analysis, the log-USD Random Forest is the selected model because it had the best cross-validated USD MAE and lower relative error. The raw-USD Random Forest remains an important alternative because it achieved the best held-out MAE, RMSE, and R². On the external non-Capital-Federal listings, the selected model achieved an MAE of approximately $100,032 and R² of 0.293, indicating meaningful geographic distribution shift and limited portability beyond the primary market.

These results are an initial benchmark rather than a production valuation system. Hyperparameter tuning, geographic holdouts, calibration, and additional market data should be completed before deployment or business use.

## Limitations and responsible use

- Listing prices are not guaranteed transaction prices.
- Missing coordinates and property details may create geographic and measurement bias.
- The dataset may not represent the complete Buenos Aires housing market.
- USD conversion and historical market conditions may affect comparability.
- Predictions should support, not replace, independent valuation and due diligence.

## Tools

Python, pandas, NumPy, matplotlib, seaborn, and scikit-learn will be used for data preparation, visualization, modeling, validation, and evaluation.

## Project structure

```text
Project-2/
├── data/
│   ├── buenos-aires-real-estate-1.csv
│   └── buenos-aires-real-estate-2.csv
├── notebook.ipynb      # Data preparation, EDA, modeling, and evaluation
└── README.md
```

