#!/bin/bash

echo -n "\nIntroduzca un numero: "
read numero

for i in $(seq 2 2 $numero)
do
	echo "$i"
done