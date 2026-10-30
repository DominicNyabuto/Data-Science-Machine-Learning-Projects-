# In the course-work the MongoDB database was alread created, to recreate it in this project, I used the open source data
# from "sensors.AFRICA Air Quality Archive Nairobi" from Open.Africa. I took the csv files from Aug 2025 to July 2026 to mark
# a full year's worth of data. I proceeded to create a local MongoDB database using MongoDB in a Docker container.
#     This is preferable as Docker keeps my host clean while exposing port 27017 for my python code to connect to.
#     I proceeded to install the prerequisites for using Docker and MongoDB on my Arch Linux system.


#========= Step 1: Set up Docker =========#
#Install docker on your PC e.g. on Arch Linux
sudo pacman -Syu docker docker-compose

#Start and enable docker daemon
sudo systemctl enable --now docker.service 

#Verify the daemon is running 
sudo systemctl status docker.service 

#Configure non-root user to run docker 
sudo usermod -aG docker $USER 

#Apply the new group membership to your current terminal session without logging out 
newgrp docker 

#Verify installation 
docker run hello-world 


#========= Step 2: Set up MongoDB =========#
#Create a directory for MongoDB data persistence
mkdir -p ~/mongodb/data/db

#Run MongoDB as a Docker container
docker run -d \
    --name mongodb \
    -p 27017:27017 \
    -v ~/mongodb/data/db:/data/db \
    mongo:latest

#========= Step 3: Import CSV data into MongoDB =========#
#Create a directory inside the container and copy the 12 CSVs
docker exec -it mongodb mkdir -p /tmp/csv_data
docker cp ~/air_quality_csvs/. mongodb:/tmp/csv_data/

#Install database tools inside the container (Debian-based container)
docker exec -it mongodb apt-get update && docker exec -it mongodb apt-get install -y mongo-tools

#Batch import all 12 CSVs into the `air_quality` database, `nairobi` collection:
docker exec -it mongodb bash -c 'for file in /tmp/csv_data/*.csv; do mongoimport --db air_quality --collection nairobi --type csv --headerline --file "$file"; done'


#========= Step 4: Verify Imported Documents =========#
#Open mongosh inside the container to inspect document count and schema
docker exec -it mongodb mongosh

# In the mongosh shell:
# use air_quality
# db.nairobi.countDocuments()
# db.nairobi.findOne()
# exit


#========= Step 5: Connect to MongoDB via Python (pymongo) =========#
# Install the required Python dependencies:
# pip install pymongo pandas

# In your Python script or Jupyter Notebook:
"""
from pymongo import MongoClient
import pandas as pd

# 1. Connect to the local MongoDB instance exposed on port 27017
client = MongoClient("mongodb://localhost:27017/")

# 2. Access the database and collection
db = client["air_quality"]
collection = db["nairobi"]

# 3. Query documents (e.g., retrieving sensor readings for PM2.5)
# Filter by value_type or specific sensor location if needed
cursor = collection.find(
    {"value_type": "P2"}, 
    {"_id": 0, "timestamp": 1, "value": 1, "sensor_id": 1}
)

# 4. Load queried records directly into a Pandas DataFrame
df = pd.DataFrame(list(cursor))

# 5. Clean, parse timestamps, and set index
df["timestamp"] = pd.to_datetime(df["timestamp"])
df["value"] = pd.to_numeric(df["value"], errors="coerce")
df = df.set_index("timestamp").sort_index()

print(f"Loaded {len(df)} records from MongoDB.")
print(df.head())
"""