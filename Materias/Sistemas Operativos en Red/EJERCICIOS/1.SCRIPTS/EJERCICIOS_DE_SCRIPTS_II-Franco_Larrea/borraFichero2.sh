#!/bin/bash

echo "Introduce un nombre de archivo: "
read nomarch

if [ -z $nomarch ]; then
	echo "No se ha introducido ningun nombre de archivo."
	exit 1
else
	if [ ! -e $nomarch ]; then
		echo "El archivo no existe."
		exit 1
	else
		rm $nomarch
		echo "El archivo $nomarch ha sido eliminado."
	fi
fi	