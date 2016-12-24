############################
#Docker file for GMSEC Bolt
#
############################
FROM ubuntu:latest
MAINTAINER Christopher Reis "chrisreis53@gmail.com"

EXPOSE 5000
EXPOSE 80

WORKDIR /code
RUN apt-get update
RUN apt-get install -y wget default-jre default-jdk python2.7 cmake uuid-dev

#Install GMSEC Libraries
RUN mkdir /GMSEC_API
RUN cd /GMSEC_API
RUN wget https://sourceforge.net/projects/gmsec/files/GMSEC%20API%204.2/GMSEC_API-4.2-RH7_x86_64.tar.gz
RUN tar -zxvf GMSEC_API-4.2-RH7_x86_64.tar.gz

#Install AMQP Required Library (this is dumb, need to contact NASA to update libs)
RUN wget http://archive.apache.org/dist/qpid/proton/0.9.1/qpid-proton-0.9.1.tar.gz
RUN tar -xf qpid-proton-0.9.1.tar.gz
RUN cd qpid-proton-0.9.1-rc1/
RUN mkdir build && cd build
WORKDIR /qpid-proton-0.91-rc1/build/
RUN cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DSYSINSTALL_BINDINGS=ON -DPYTHON_EXECUTABLE:FILEPATH=/usr/bin/python2.7; exit 0
RUN make install

ADD .bashrc ~/.bashrc

ENV LD_LIBRARY_PATH /GMSEC_API/bin:/usr/lib/x86_64-linux-gnu/

#server name must be same name given to gmsec bolt server
#CMD ["/GMSEC_API/bin/gmsub","server=gmbolt:5000","connectiontype=gmsec_bolt"]
CMD ["/GMSEC_API/bin/gmsub","server=rabbitmq:5672","connectiontype=gmsec_amqp"]
