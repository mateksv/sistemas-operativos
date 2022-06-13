#!/bin/bash


ARCHIVO1=/etc/passwd
ARCHIVO2=/etc/group

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


