#!/bin/sh
sudo usermod -aG docker $USER
docker-compose down
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)
docker image rm $(docker image ls -aq)
# sudo chown -R $USER:$USER masonicmanagement
# sudo chmod -R 777 masonicmanagement  
chmod +x entrypoints/docker-entrypoint.sh
chmod +x entrypoints/sidekiq-entrypoint.sh
chmod +x init.sql
sudo rm -rf postgres
sudo rm -rf node_modules
