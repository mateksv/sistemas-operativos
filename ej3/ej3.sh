#!/bin/bash

if [ $# = 0 ]; then
	echo "faltan param"
	exit
fi
if [ -f "perm644" ]; then
	echo "archivo 'perm644' ya existe"
fi

for archivo in $(find $1 -perm 644 -type f); do
	echo "$archivo" >> perm644
done
