#! /bin/bash
sudo apt install curl
curl https://monoschinos2.com/ > index.html
sudo apt install espeak
command espeak
grep "<h6 class=\"anime2dltstitle\">" index.html > titulo.txt
while read linea;do


echo $linea | awk -F ">" '{print $2}' | awk -F "<" '{print $1}'>>titulo1.txt




done<titulo.txt
espeack titulo1.txt
exit
