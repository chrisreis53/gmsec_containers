############################
#Docker file for GMSEC Publish
#
############################
FROM chrisreis53/gmsec_node:1-sub_pub_only
MAINTAINER Christopher Reis "chrisreis53@gmail.com"

RUN apt update
RUN apt install -y inetutils-ping

WORKDIR /code
ADD ./delay.sh ./delay.sh

ENV LD_LIBRARY_PATH /GMSEC_API/bin:/usr/lib/x86_64-linux-gnu/

#server name must be same name given to gmsec bolt server
#CMD ["/GMSEC_API/bin/gmpub","server=gmbolt:5000","iterations=500","connectiontype=gmsec_bolt","interval_ms=500"]
#CMD ["/GMSEC_API/bin/gmpub","server=rabbitmq:5672","iterations=500","connectiontype=gmsec_amqp","interval_ms=500"]
