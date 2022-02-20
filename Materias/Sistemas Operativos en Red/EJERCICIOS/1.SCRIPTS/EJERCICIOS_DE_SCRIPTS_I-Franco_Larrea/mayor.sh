#!/bin/bash

if [ $# -eq 2 ]; then
	if [ $1 -ne $2 ]; then
		if [ $1 -gt $2 ]; then
			echo "El numero $1 es mayor que el numero $2."
		else
			echo "El numero $2 es mayor que el numero $1."
		fi
	else
		echo "Los numeros son iguales."
	fi
else
	echo "El numero de parametros no es correcto."
fi