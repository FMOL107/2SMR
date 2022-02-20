#!/bin/bash

if [ -e $1 ]; then
	if [ -d $1 ]; then
		echo "Es un directorio."
	else
		echo "Es un archivo normal y corriente."
	fi
else
	echo "$1 No existe en el sistema."
fi
