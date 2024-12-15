#!/bin/bash
#$Revision:001$
#$Sun Dec  8 11:14:21 AM IST 2024$

#Variables
BASE=/home/kali/myscripts
DAYS=10
DEPTH=1
RUN=0

#Check if the directory is present or not
if [ ! -d $BASE ]
then
	echo "Directory is not present: $BASE"
	exit 1
fi

#Create 'archive' folder if not present
if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#Find the list of files learger than 20kb
for i in `find $BASE -maxdepth $DEPTH -type f -size +20c`
do
	if [ $RUN -eq 0 ]
	then
		echo "[ $(date "+%Y-%m-%d %H:%M:%S") ] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done

