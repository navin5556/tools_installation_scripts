##Install in Amazon Ubuntu
sudo usermod -aG docker $USER
docker pull docker.bintray.io/jfrog/artifactory-oss:latest
sudo mkdir -p /jfrog/artifactory

# Purpose: This command ensures that the Artifactory container, which runs under a specific user ID (1030), 
# ..has the necessary permissions to read and write to the /jfrog directory on the host machine.
sudo chown -R 1030 /jfrog/

# Purpose: This command starts a new Docker container running JFrog Artifactory OSS. 
# It maps necessary ports for web access, 
# mounts the persistent storage directory, and runs the container in detached mode.
docker run --name artifactory -d \
  -p 8081:8081 \
  -p 8082:8082 \
  -v /jfrog/artifactory:/var/opt/jfrog/artifactory \
  docker.bintray.io/jfrog/artifactory-oss:latest
