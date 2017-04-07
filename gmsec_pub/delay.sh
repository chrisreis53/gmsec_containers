#!/bin/bash
sleep 2s #wait for the busses to come up
/GMSEC_API/bin/gmpub server=rabbitmq:5672 iterations=5 connectiontype=gmsec_amqp interval_ms=500
/GMSEC_API/bin/gmpub server=gmbolt:5000 iterations=5 connectiontype=gmsec_bolt interval_ms=500
