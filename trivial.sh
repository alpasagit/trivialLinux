#! /bin/bash







read -p "Cuantos jugadores sois(1 minimo, 2 Maximo)" cantjuga

while [ cantjuga -le 0 ] && [ cantjuga -ge 3 ];do

if [ cantjuga -eq 1 ];then





elif [ cantjuga -eq 2 ];then





fi

done
