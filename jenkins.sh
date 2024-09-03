#!/bin/bash

#In summary, sudo apt update -y updates the local package index, and sudo apt upgrade -y 
# ..installs the latest versions of the installed packages. 
#It's a good practice to run sudo apt update before sudo apt upgrade to ensure that your system has 
# ..the latest information about available packages.





# Purpose: Updates the list of available packages and their versions from the repositories configured on the system.
sudo apt update -y

# Purpose: Installs the latest versions of all packages currently installed on the system.
sudo apt upgrade -y 

sudo apt install openjdk-17-jre -y

# Purpose: Downloads and adds the Jenkins GPG key to your system to verify the packages.
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# urpose: Adds the Jenkins repository to the system's list of package sources.
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Purpose: Updates the package index again to include packages from the newly added Jenkins repository.
sudo apt-get update -y 
sudo apt-get install jenkins -y
