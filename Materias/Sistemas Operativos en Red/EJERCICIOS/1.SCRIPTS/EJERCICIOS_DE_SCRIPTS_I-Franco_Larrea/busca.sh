#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Error: Introduce un parametro de busqueda."
else
	sudo find / -type f -iname *"$1"*
fi
