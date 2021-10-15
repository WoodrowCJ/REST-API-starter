#! /bin/bash
cd REST-API-starter
sudo service jenkins stop
echo "Jenkins service halted"
npm install
npm build
echo "please supply a tag name for the build"
read tag
docker build -t node-app-carl:${tag} .
echo "build node-app-carl:${tag} complete"
docker run -d -p 8080:8080 --name nodeapp-carl node-app-carl:${tag}
docker ps
echo "Container spun up successfully!"
sudo service jenkins start
echo "Jenkins restarted"