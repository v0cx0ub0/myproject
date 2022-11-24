#!/bin/bash
newfile1=myproject
if [ -d /var/lib/jenkins/workspace/*/"$newfile1" ]
then
	echo "File is found"
	rm -r /var/lib/jenkins/workspace/*/"$newfile1"
else
   echo "File is not found"
fi
