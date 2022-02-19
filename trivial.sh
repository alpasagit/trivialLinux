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
rand=$(($(($RANDOM%$max))+2))
 
head -$rand Informatica.txt | tail +$rand | awk 




read -p "escribe tu respuesta" respuesta


#elif [ cantjuga -eq 2 ];then





fi


