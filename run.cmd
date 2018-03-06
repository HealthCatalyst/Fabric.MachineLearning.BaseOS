docker stop fabric.machinelearning.baseos
docker rm fabric.machinelearning.baseos

docker pull healthcatalyst/fabric.docker.centos.tomcat:latest

docker build -t healthcatalyst/fabric.machinelearning.baseos . 
# docker run -p 8085:8085 --rm --name machinelearning -t healthcatalyst/fabric.machinelearning.baseos
docker run -p 8085:8085 -it --name machinelearning -t healthcatalyst/fabric.machinelearning.baseos --entrypoint=/bin/bash