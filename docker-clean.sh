#!/bin/sh
sudo usermod -aG docker $USER
docker-compose down
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)
docker image rm $(docker image ls -aq)
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)
sudo chown -R $USER:$USER postgres
sudo chown -R $USER:$USER masonicmanagement
sudo chown -R root:root config/puma.rb
sudo chmod -R 777 masonicmanagement  
sudo chmod -R 777 postgres
sudo rm -rf postgres
sudo rm -rf node_modules
