#!/bin/bash

# Hacer un scripts que recorra un directorio pasado como parametro, busque todos los archivos con
# extensión .txt y le asigne permiso de escritura a otro.

if [ $# -eq 0 ]
then
	echo "No hay parametros"
else
	
	find $1 | grep ".txt$" > txts.tmp
	
	while read line
	do
		echo "$line"
		chmod o+w "$line"
	done < txts.tmp

	rm txts.tmp
fi

