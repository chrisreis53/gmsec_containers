FROM centos:centos7
MAINTAINER Christopher Reis <chrisreis53@gmail.com>

RUN yum update -y && \
    yum -y install gdb.x86_64 glibc.i686 initscripts redhat-lsb-core.x86_64 && \
    yum clean all

WORKDIR /tmp
ADD MarkLogic-9.0-1.1.x86_64.rpm /tmp/MarkLogic.rpm

RUN yum -y install /tmp/MarkLogic.rpm && yum clean all && rm /tmp/MarkLogic.rpm

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/MarkLogic/mlcmd/bin

EXPOSE 7997 7998 7999 8000 8001 8002 8040 8041 8042

CMD /etc/init.d/MarkLogic start && tail -f /dev/null
