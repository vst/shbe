## This docker image is based on https://hub.docker.com/_/openjdk/
FROM openjdk:8u181

## Add the current directory which contains setup script:
ADD . /tmp/setup/

## Run the setup script:
RUN cd /tmp/setup && bash install.sh
