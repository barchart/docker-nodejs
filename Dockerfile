#
# Base image for deploying node.js applications.
#
# docker-build properties:
# TAG=barchart/nodejs:latest

FROM barchart/base
MAINTAINER Jeremy Jongsma "jeremy@barchart.com"

RUN apt-get --yes update && \
	apt-get --yes install nodejs nodejs-legacy npm && \
	apt-get clean

WORKDIR /app

CMD ["npm", "start"]
