#!/bin/bash

FREE_SPACES=$(free -mt | grep "Total" | awk '{print $4}')

TH=7600

if [[ $FREE_SPACES -lt $TH ]]
then
	echo "WARNING.. Your are Running with Low Spaces"
else
	echo "RAM spaces is sufficient - $FREE_SPACES M"
fi

