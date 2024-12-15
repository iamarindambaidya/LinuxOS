#!/bin/bash

read -p "What is your age ? " age
read -p "What is your nationality ? " country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You can Vote..!"
else
	echo "Opps..! You can't Vote."
fi
