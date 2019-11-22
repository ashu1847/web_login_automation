FROM ubuntu:latest

MAINTAINER ybmsr <kumarashu1847@gmail.com>

WORKDIR /home/shubham/hello-docker/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /home/shubham/hello-docker/

ADD index.html /home/shubham/hello-docker/index.html

CMD ["http-server", "-s"]
