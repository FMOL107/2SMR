#!/bin/bash

echo `date` >> /home/fmol107/logmonitor.txt


estadocups=`service cups status | grep "active (running)"`

if [ -z "$estadocups" ]
then
    echo "[ERROR] El servidor CUPS esta inactivo." >> /home/fmol107/logmonitor.txt
else
    echo "[OK] El servidor CUPS esta activo." >> /home/fmol107/logmonitor.txt
fi

conectividad=`ping -c3 8.8.8.8 | grep "ttl"`

if [ -z "$conectividad" ]
then
    echo "[ERROR] Conectividad." >> /home/fmol107/logmonitor.txt
else
    echo "[OK] Conectividad." >> /home/fmol107/logmonitor.txt
fi

ram=`free --kilo | grep "Memoria" | tr -s [:space:] | cut -d" " -f3`

if [ $ram -ge 100000 ]
then
    echo "[OK] Memoria RAM libre: $ram" >> /home/fmol107/logmonitor.txt
else
    echo "[ERROR] Memoria RAM insuficiente." >> /home/fmol107/logmonitor.txt
fi

echo " " >> /home/fmol107/logmonitor.txt

cat /home/fmol107/logmonitor.txt
