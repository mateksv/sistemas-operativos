#!/bin/bash

if [ $# -eq 2 ]
then
	ARCHIVO1=$1
	ARCHIVO2=$2

	LARCH1=$(wc -l $ARCHIVO1 | awk '{print $1}')
	LARCH2=$(wc -l $ARCHIVO2 | awk '{print $1}')
	
	if [ $LARCH1 -gt $LARCH2 ]
	then
		echo "El archivo '$ARCHIVO1' ($LARCH1 lineas) es mas grande que '$ARCHIVO2' ($LARCH2 lineas)"
	elif [ $LARCH1 -lt $LARCH2 ]
	then
		echo "El archivo '$ARCHIVO2' ($LARCH2 lineas) es mas grande que '$ARCHIVO1' ($LARCH1 lineas)"
	else
		echo "El archivo '$ARCHIVO1' ($LARCH1 lineas) es igual de grande que '$ARCHIVO2' ($LARCH2 lineas)"
	fi
else
	echo "Debe ingresar dos archivos como parametros:"
	echo "./punto3.sh <archivo1> <archivo2>"
fi



