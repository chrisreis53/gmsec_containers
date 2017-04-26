# Pull base image.
FROM ubuntu:16.10
MAINTAINER Christopher Reis "chrisreis53@gmail.com"

RUN apt update
RUN apt install -y libboost-system-dev cmake

ADD ./dictionary.json /dictionary.json

#CMD ["/GMSEC_API-4.2/bin/gmpub","server=gmbolt:9100","iterations=500","connectiontype=gmsec_bolt","interval_ms=500"]
<<<<<<< HEAD
CMD ["/code/bin/gm_telemetry_server","server=gmbolt:9100","connectiontype=gmsec_bolt","loglevel=none"]
=======
#CMD ["/code/bin/gm_telemetry_server","server=gmbolt:9100","connectiontype=gmsec_bolt"]
#CMD ["make","-C","/GMSEC_API-4.2/example/cpp/gm_telemetry_server","&&","/GMSEC_API-4.2/bin/gm_telemetry_server","server=gmbolt:9100","connectiontype=gmsec_bolt"]
CMD ["/GMSEC_API-4.2/bin/gm_telemetry_server","server=gmbolt:9100","connectiontype=gmsec_bolt"]
#CMD ["make","-C","/GMSEC_API-4.2/example/cpp/gm_telemetry_server"]
>>>>>>> f8be1751fc68ad4e1db065204dad158041be20fc
