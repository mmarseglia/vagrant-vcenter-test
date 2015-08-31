#!/bin/bash

yum -y install httpd php

service httpd status
status=$?
if [ $status != 0 ]; then
  echo starting httpd
  service httpd start
fi

service iptables status
status=$?

if [ $status != 3 ]; then
  echo stopping firewall
  service iptables stop
fi

echo "ip address on eth0"
ip addr show dev eth0|grep inet|awk {'print $2'}
