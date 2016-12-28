FROM ubuntu:latest

RUN apt update
RUN apt install -y rabbitmq-server

RUN rabbitmq-plugins enable rabbitmq_amqp1_0 rabbitmq_management
RUN service rabbitmq-server start

EXPOSE 5672
EXPOSE 15672

CMD ["service","rabbitmq-server","start"]
