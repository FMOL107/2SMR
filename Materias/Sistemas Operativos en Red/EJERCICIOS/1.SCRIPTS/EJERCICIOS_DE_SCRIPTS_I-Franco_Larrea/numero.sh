#!/bin/bash

echo "Introduce un numero: "
read numero

if [ $numero -ge 0 ] && [ $numero -le 10 ]; then
	echo "El numero $numero esta entre 0 y el 10."
else
	echo "Error: $numero no esta entre 0 y 10."
fi