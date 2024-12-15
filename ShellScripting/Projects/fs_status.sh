#!/bin/bash

#Monitoring free file system status in disk

#Storing output into a variable

FU=$( df -h | grep "sdc" | awk '{print $5}' | tr -d % )

TO="lysosome143@gmail.com"


if [[ $FU -ge 1 ]]
then
	echo "Warning...Running with low storage..! - $FU %" | mutt -s "DISK SPACE ALERT!" $TO 
else
	echo "All Okay"
fi
