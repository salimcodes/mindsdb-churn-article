# To update the system
sudo apt-get update

# To install Docker
sudo apt-get install docker-ce

# To verify the Docker installation 
sudo docker version

# To create a new Docker user
sudo groupadd docker
sudo usermod -aG docker $USER

# To test that Docker has been installed
docker run hello-world

# To deploy the MindsDB server
docker pull mindsdb/mindsdb

# To expose the MindsDB GUI port
docker run -p 47334:47334 -p 47335:47335 mindsdb/mindsdb
