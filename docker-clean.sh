#!/bin/zsh
sudo usermod -aG docker $USER
docker-compose down
docker image rm $(docker image ls -aqf)
docker container rm $(docker container ls -aqf)
docker volume rm $(docker volume ls -qf)
docker network rm $(docker network ls -qf)
sudo chown -R $USER:$USER postgres
sudo chown -R $USER:$USER masonicmanagement
sudo chown -R root:root config/puma.rb
sudo chmod -R 777 masonicmanagement  
sudo chmod -R 777 postgres
sudo rm -rf postgres
sudo rm -rf node_modules
