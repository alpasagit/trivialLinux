#!/bin/bash



echo " _________     ______         ________       __    __       ________       ________        __           "
echo "/________/\   /_____/\       /_______/\     /_/\  /_/\     /_______/\     /_______/\      /_/\          "
echo "\__.::.__\/   \:::_ \ \      \__.::._\/     \:\ \ \ \ \    \__.::._\/     \::: _  \ \     \:\ \         "
echo "   \::\ \      \:(_) ) )_       \::\ \       \:\ \ \ \ \      \::\ \       \::(_)  \ \     \:\ \        "
echo "    \::\ \      \: __  \ \      _\::\ \__     \:\_/.:\ \      _\::\ \__     \:: __  \ \     \:\ \____   "  
echo "     \::\ \      \ \  \ \ \    /__\::\__/\     \ ..::/ /     /__\::\__/\     \:.\ \  \ \     \:\/___/\  "
echo "      \__\/       \_\/ \_\/    \________\/      \___/_/      \________\/      \__\/\__\/      \_____\/  "




max=$((3469-2+1))
cantjuga=0


while [ $cantjuga -le 0 ] || [ $cantjuga -ge 3 ]
do

read -p "Cuantos jugadores sois(1 minimo, 2 Maximo)" cantjuga

done

if [ $cantjuga -eq 1 ];then
contadorOK=0
while [ $contadorOK -lt 10 ]
do
rand=$(($(($RANDOM%$max))+2))

head -$rand Informatica.txt | tail +$rand | awk -F "*" '{ print $3 }'

read -p "Escribe tu respuesta " respuesta
solucion=$(head -$rand Informatica.txt | tail +$rand | awk -F"*" '{ print $4 }') 

if [ "$solucion" = "$respuesta" ]
then
contadorOK=$(($contadorOK + 1))
echo "¡Has acertado! Num de aciertos: $contadorOK"
else
contadorF=$(($contadorF + 1))
echo "¡Has fallado! Num de fallos: $contadorF"
echo "Tu numero de aciertos es: $contadorOK"
fi

done

echo "¡Enhorabuena, has ganado el juego! Total fallos: $contadorF"
echo "se supone que esto es una tabla de puntuaciones"

elif [ $cantjuga -eq 2 ];then
turno=1
contadorOK1=0
contadorOK2=0
while [ $contadorOK1 -lt 10 ] || [ $contadorOK2 -lt 10 ]
do
#turno1
while [ $turno -eq 1 ] && [ $contadorOK1 -lt 10 ]
do
echo "Turno del 1r jugador"
rand=$(($(($RANDOM%$max))+2))
#pregunta
head -$rand Informatica.txt | tail +$rand | awk -F "*" '{ print $3 }'
#respuesta
read -p "Escribe tu respuesta: " respuesta
solucion=$(head -5 Informatica.txt | tail +5 | awk -F "*" '{ print $4 }')
#comprobacion
if [ "$respuesta" = "$solucion" ];then
contadorOK1=$(($contadorOK1 + 1))
echo "¡Has acertado! Num de aciertos: $contadorOK1"
else
contadorF1=$(($contadorF1 + 1))
echo "¡Has fallado! Num de fallos: $contadorF1"
echo "Numero de aciertos: $contadorOK1"
turno=2
fi
done

#turno2
while [ $turno -eq 2 ] && [ $contadorOK2 -lt 10 ]
do
echo "Turno del 2do jugador"
rand=$(($(($RANDOM%$max))+2))
#pregunta
head -$rand Informatica.txt | tail +$rand | awk -F "*" '{ print $3 }'
#respuesta
read -p "escribe tu respuesta" respuesta
solucion=$(head -$rand Informatica.txt | tail +$rand | awk -F "*" '{ print $4 }')

if [ "$respuesta" = "$solucion" ];then
contadorOK2=$(($contadorOK2 + 1))
echo "¡Has acertado! Num de aciertos: $contadorOK2"
else
contadorF2=$(($contadorF2 + 1))
echo "¡Has fallado! Num de fallos: $contadorF2"
echo "Numero de aciertos: $contadorOK2"
turno=1
fi
done
done
if [ $contadorOK1 -gt $contadorOK2 ];then
echo "¡El ganador es el Jugador 1!"
else
echo "¡El ganador es el Jugador 2!"
fi
echo "Puntuación Jugador 1, Num Aciertos: $contadorOK1 Num Fallos: $contadorF1"
echo "Puntuación Jugador 2, Num Aciertos: $contadorOK2 Num Fallos: $contadorF2"
fi
