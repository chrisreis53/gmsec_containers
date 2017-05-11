# Pull base image.
FROM ubuntu:16.04
MAINTAINER Christopher Reis "chrisreis53@gmail.com"

RUN apt update
RUN apt install -y libboost-all-dev libcurl4-openssl-dev libmysqlclient-dev

WORKDIR /code

ADD ./dictionary_adaptor.json ./dictionary_adaptor.json
ADD ./dictionary.json ./dictionary.json

ENV LD_LIBRARY_PATH /GMSEC_API/bin
