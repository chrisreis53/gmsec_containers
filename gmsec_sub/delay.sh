#!/bin/bash
sleep 2s #wait for the busses to come up
/GMSEC_API/bin/gmsub server=rabbitmq:5672 connectiontype=gmsec_amqp & /GMSEC_API/bin/gmsub server=gmbolt:5000 connectiontype=gmsec_bolt
