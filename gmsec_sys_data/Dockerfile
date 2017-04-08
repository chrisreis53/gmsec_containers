# Pull base image.
FROM chrisreis53/gmsec_node:1-sub_pub_only
MAINTAINER Christopher Reis "chrisreis53@gmail.com"

RUN apt update

#CMD ["/GMSEC_API-4.2/bin/gmpub","server=gmbolt:9100","iterations=500","connectiontype=gmsec_bolt","interval_ms=500"]
#CMD ["/code/bin/gm_system_data","server=gmbolt:9100","connectiontype=gmsec_bolt","iterations=50000","loglevel=none"]
CMD ["/GMSEC_API-4.2/bin/gm_system_data","server=gmbolt:9100","connectiontype=gmsec_bolt","iterations=50000","loglevel=none"]
