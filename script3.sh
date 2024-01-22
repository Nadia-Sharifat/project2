#!/bin/bash
read -p "Enter your IP: " IP
#$IP=`$IP grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
#if [[ $IP ]
if [[ $IP =~ ^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$ ]]
then
	ping -c 1 $IP >> /dev/null
	if [ $? -eq 0 ]
then
        echo "The destination is reachable"
else
        echo "The destination is unreachable"
	exit 1
	fi

else
	echo "ip isnt valid"
	fi


