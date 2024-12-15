#!/bin/bash

#Checking Status successfull or not using $?

read -p "Enter a site name " site

ping -c 1 $site &> /dev/null
#sleep 5s

if [[ $? -eq 0 ]]
then
	echo "Connection Successfull"
else
	echo "Connection Disrupt"
fi
