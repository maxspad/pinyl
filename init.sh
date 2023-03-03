#! /bin/bash

echo "Updating repository and upgrading..."
sudo apt update; sudo apt upgrade -y

echo "Installing docker..."
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER

echo "Creating vinyl export directory..."
mkdir /home/$USER/Vinyl


