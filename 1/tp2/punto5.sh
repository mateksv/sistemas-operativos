#!/bin/bash

# Hacer un script que indique la cantidad de archivos y directorios que hay en un directorio cualquiera
# pasado como argumento, usando estructuras repetitivas.

ARCHIVOS=0
DIRECTORIOS=0
OTROS=0

for i in $(ls /home/mateo/Desktop/*)
do
	if [ -f $i ]
	then
		let ARCHIVOS+=1
	elif [ -d $i ]
	then
		let DIRECTORIOS+=1
	else
		let OTROS+=1
	fi
done

echo "ARCHIVOS: $ARCHIVOS"
echo "DIR: $DIRECTORIOS"
echo "OTROS: $OTROS"
