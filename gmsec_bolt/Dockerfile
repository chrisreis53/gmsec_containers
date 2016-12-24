############################
#Docker file for GMSEC Bolt
#
############################
FROM chrisreis53/gmsec_node:2-bolt
MAINTAINER Christopher Reis "chrisreis53@gmail.com"

EXPOSE 5000
EXPOSE 80

CMD ["java","-jar","/GMSEC_API/bin/bolt.jar","port=5000"]
