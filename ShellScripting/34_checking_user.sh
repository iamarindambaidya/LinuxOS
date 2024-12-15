#!/bin/bash

# Checking User is root or not


if [[ $UID -eq 0 ]]
then
	echo "User is Root"
else
	echo "User is not Root"
fi
