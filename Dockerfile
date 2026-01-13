# base image(os kon sa use karna hai)
# empty image of ubantu will be pulled
# FROM ubuntu:latest  
# if we are pulling ubuntu then we have to install nodejs and npm manually so better pull node image

#pulling node image from docker hub
FROM node:latest   

# copying files from host(local) to container index.js file
# method 1
# COPY . /home/app
# method 2
COPY index.js /home/app/index.js
COPY package.json /home/app/package.json

WORKDIR /home/app

RUN npm install
# can have multiple CMD here

EXPOSE 4000
# to expose the port outside the docker

CMD ["node", "index"]