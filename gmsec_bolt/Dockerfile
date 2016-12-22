############################
#Docker file for GMSEC Bolt
#
############################
FROM ubuntu:latest
MAINTAINER Christopher Reis "chrisreis53@gmail.com"

EXPOSE 5000
EXPOSE 80

#WORKDIR /code
RUN apt-get update
RUN apt-get install -y wget default-jre default-jdk
RUN mkdir /GMSEC_API
RUN cd /GMSEC_API
RUN wget https://sourceforge.net/projects/gmsec/files/GMSEC%20API%204.2/GMSEC_API-4.2-RH7_x86_64.tar.gz
RUN tar -zxvf GMSEC_API-4.2-RH7_x86_64.tar.gz


CMD ["java","-jar","/GMSEC_API/bin/bolt.jar","port=5000"]

