#! /bin/bash




echo " _________     ______         ________       __    __       ________       ________        __           "
echo "/________/\   /_____/\       /_______/\     /_/\  /_/\     /_______/\     /_______/\      /_/\          "
echo "\__.::.__\/   \:::_ \ \      \__.::._\/     \:\ \ \ \ \    \__.::._\/     \::: _  \ \     \:\ \         "
echo "   \::\ \      \:(_) ) )_       \::\ \       \:\ \ \ \ \      \::\ \       \::(_)  \ \     \:\ \        "
echo "    \::\ \      \: __  \ \      _\::\ \__     \:\_/.:\ \      _\::\ \__     \:: __  \ \     \:\ \____   "  
echo "     \::\ \      \ \  \ \ \    /__\::\__/\     \ ..::/ /     /__\::\__/\     \:.\ \  \ \     \:\/___/\  "
echo "      \__\/       \_\/ \_\/    \________\/      \___/_(      \________\/      \__\/\__\/      \_____\/  "




max=$((3469-2+1))
cantjuga=0


while [ $cantjuga -le 0 ] || [ $cantjuga -ge 3 ]
do

read -p "Cuantos jugadores sois(1 minimo, 2 Maximo)" cantjuga

done

if [ $cantjuga -eq 1 ];then

while [ $contadorOK -lt 10 ]
do
rand=$(($(($RANDOM%$max))+2))

#head -5 Informatica.txt | tail +5 | awk '{ print $10 }'
echo "printeo la pregunta"

read -p "escribe tu respuesta" respuesta
solucion= echo "aqui va el otro awk que no sabemos hacer"

if [ $respuesta = $solucion ];then
contadorOK=$(($contadorOK + 1))
echo "¡Has acertado! Num de aciertos: $contadorOK"
else
contadorF=$(($contadorF + 1))
echo "¡Has fallado! Num de fallos: $contadorF"
fi

done

echo "¡Enhorabuena, has ganado el juego! Total fallos: $contadorF"
echo "se supone que esto es una tabla de puntuaciones"

elif [ cantjuga -eq 2 ];then

#turno1
if [ $turno -eq 1 ];then
echo "Turno del 1r jugador"
#pregunta
rand=$(($(($RANDOM%$max))+2))
#head -5 Informatica.txt | tail +5 | awk '{ print $10 }'
echo "printeo la pregunta"

read -p "escribe tu respuesta" respuesta
solucion= echo "aqui va el otro awk que no sabemos hacer"

if [ $respuesta = $solucion ];then
contadorOK=$(($contadorOK + 1))
echo "¡Has acertado! Num de aciertos: $contadorOK"
else
contadorF=$(($contadorF + 1))
echo "¡Has fallado! Num de fallos: $contadorF"
fi
fi
#turno2

#pregunta
rand=$(($(($RANDOM%$max))+2))
#head -5 Informatica.txt | tail +5 | awk '{ print $10 }'
echo "printeo la pregunta"

read -p "escribe tu respuesta" respuesta
solucion= echo "aqui va el otro awk que no sabemos hacer"

if [ $respuesta = $solucion ];then
contadorOK=$(($contadorOK + 1))
echo "¡Has acertado! Num de aciertos: $contadorOK"
else
contadorF=$(($contadorF + 1))
echo "¡Has fallado! Num de fallos: $contadorF"
fi



fi


