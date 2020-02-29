#!/bin/bash

clear

for number in {1..134}
do
	echo "Włóż stronę $number" 
	read -p "Naciśnij ENTER"

	scanimage --format=jpeg > $number.jpg

	tesseract $number.jpg  $number.txt  --oem 3 --psm 6 -l pol
done
