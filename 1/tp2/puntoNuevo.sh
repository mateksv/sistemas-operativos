#!/bin/bash

NUEVO="ej$2"
cp -r $1 $NUEVO
mv $NUEVO/"$1.html" $NUEVO/"$NUEVO.html"

