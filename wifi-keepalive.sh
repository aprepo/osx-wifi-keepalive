#!/bin/bash

while true
do
	
	ping -c 1 8.8.8.8 > /dev/null
	if [ $? -eq 0 ]
	then
		#echo "$(date +%F-%T) : Connection OK"
		echo -n "."
	else
		echo "$(date +%F-%T) : Connection DOWN, reseting wifi..."
		wifi-reset.sh
	fi
	sleep 10
done
