FROM ubuntu:trusty
LABEL Description="This image is used as a build toolchain for the placesapp "
MAINTAINER STEPHEN D "steps501@gmail.com"
RUN apt-get update && apt-get install -y python-pip \
python-dev \
libpq-dev \
build-essential 

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

