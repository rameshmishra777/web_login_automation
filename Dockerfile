FROM ubuntu:latest

MAINTAINER ramesh <rameshmishra793@gmail.com>

WORKDIR /opt/docker/custom-image/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

RUN npm install -g http-server

ADD . /opt/docker/custom-image/

ADD index.html /opt/docker/custom-image/index.html

CMD ["http-server", "-s"]
