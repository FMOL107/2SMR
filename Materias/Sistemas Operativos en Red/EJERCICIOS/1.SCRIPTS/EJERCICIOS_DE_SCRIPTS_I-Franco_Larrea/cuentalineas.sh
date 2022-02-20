#!/bin/bash

if [ $# -eq 1 ]; then
	if [ -e $1 ]; then
		cat $1 | wc -l
	else
		echo "El fichero no existe."
		exit 1
	fi
else
	echo "Introduce solo un parametro."
fi
