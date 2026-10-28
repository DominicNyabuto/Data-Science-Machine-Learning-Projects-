# Project 3: Time Series Modeling of Air Quality in Nairobi

- **Concepts**:
    - Time-Series Analysis, NoSQL (MongoDB), Lagged Regression, AR & ARMA Models.
- **Description**: 
    - This project deals with time-indexed data. Using air quality measurements from Nairobi stored in MongoDB, we query, prepare, and forecast time series data. The project builds from simple lagged regression up to Autoregressive (AR) and ARMA models


## Data Source: Open.Africa

- The data used for this project comes from the sensors.AFRICA Air Quality Archive Nairobi - https://open.africa/dataset/sensorsafrica-airquality-archive-nairobi
    - This data set contains PM (particulate matter), temperature, and humidity readings taken with low-cost sensors. These sensors measure the concentration of PM in the air, including particles with diameters less than or equal to 1 micrometer (PM1), 2.5 micrometers (PM2.5), and particles with diameters less than or equal to 10 micrometers (PM10). The data set includes information on the sensor type, date, time, and location of the readings, as well as the sensor’s specific measurement values for Temperature (C), Humidity (%), PM1, PM2.5, and PM10. The data set is ideal for researchers and individuals interested in studying air quality and low-cost sensors in PM measurement. The dataset is stored in CSV format and can be opened using editors like Microsoft Excel, Google Sheets, LibreOffice Calc, etc. Note that P0 in the data represents PM1, P2 represents PM2.5, and P1 represents PM10