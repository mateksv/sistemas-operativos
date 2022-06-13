#!/bin/bash
while read line
do
	echo "$line"
	sleep 0.3
done < /etc/passwd
