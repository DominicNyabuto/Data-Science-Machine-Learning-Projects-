# In the course-work the MongoDB database was alread created, to recreate it in this project, I used the open source data
# from "sensors.AFRICA Air Quality Archive Nairobi" from Open.Africa. I took the csv files from Aug 2025 to July 2026 to mark
# a full year's worth of data. I proceeded to create a local MongoDB database using MongoDB in a Docker container.
#     This is preferable as Docker keeps my host clean while exposing port 27017 for my python code to connect to.
#     I proceeded to install the prerequisites for using Docker and MongoDB on my Arch Linux system.



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

