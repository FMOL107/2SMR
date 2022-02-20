#!/bin/bash

if [ ! -e $1 ]; then
	echo "ERROR: El archivo $1 no existe."
	exit 1
else
	rm $1
	echo "El archivo $1 se ha borrado."
fi