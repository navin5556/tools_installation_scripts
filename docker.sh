#!/bin/bash
sudo apt update -y

# Purpose: This command installs necessary packages to set up Docker.
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Purpose: Adds Docker's official GPG key to your system.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Purpose: Adds Docker's repository to your list of apt sources.
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y 

# Purpose: Updates the package index again after adding Docker’s repository.
sudo apt update -y

# Purpose: Shows the available versions of the docker-ce(community edition) package and the repository they come from.
apt-cache policy docker-ce -y

# Purpose: Installs Docker Community Edition on your system.
sudo apt install docker-ce -y

#sudo systemctl status docker

sudo chmod 777 /var/run/docker.sock
