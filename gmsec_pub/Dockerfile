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

ADD .bashrc ~/.bashrc

#CMD ["export","LD_LIBRARY_PATH=/GMSEC_API/bin/"]
#CMD ["source","~/.bashrc"]
ENV LD_LIBRARY_PATH /GMSEC_API/bin

#server name must be same name given to gmsec bolt server
CMD ["/GMSEC_API/bin/gmpub","server=gmbolt:5000","iterations=500","connectiontype=gmsec_bolt","interval_ms=500"]
