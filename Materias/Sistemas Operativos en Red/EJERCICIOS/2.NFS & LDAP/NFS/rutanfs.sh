#!/bin/bash

ruta_absoluta="$1"

if [ $# != 1 ]; then
	echo "Error, numero de parametros invalido. Introduzca solo la ruta absoluta." 
	exit 1
else
	if [ -d $ruta_absoluta ]; then
		existe=`sudo grep -w $ruta_absoluta /etc/exports` &>/dev/null

		if [ -n $existe ]; then
			echo "La carpeta $ruta_absoluta ya se encuentra en el servidor NFS."
		else
			sudo echo "$ruta_absoluta 192.168.0.0/16(ro,no_subtree_check,sync)" >> /etc/exports
			echo "La carpeta $ruta_absoluta ya ha sido añadida al servidor NFS."
		fi
	else
		mkdir -p $ruta_absoluta
		sudo echo "$ruta_absoluta 192.168.0.0/16(ro,no_subtree_check,sync)" >> /etc/exports
		echo "La carpeta $ruta_absoluta ya ha sido añadida al servidor NFS."
	fi
fi
