

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

