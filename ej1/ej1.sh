#!/bin/bash

if [ -f "var-set" ]; then
	echo "El archivo var-set ya existe."
	exit
fi

echo $HOSTNAME > "var-set"
echo $HOME >> "var-set"
echo $LOGNAME >> "var-set"
echo $PATH >> "var-set"
