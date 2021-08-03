#!/bin/bash
year=$(date +%Y)
for i in {1..365393}; do
	# Genrates the mounth eg September(2021)
	Mounth="$(date "+%B(%Y)" -d "+$i days")"
	#genrated the day mount and date eg Tuesday_08/03
	Day="$(date +%A_%m/%d -d "+$i days") "
	#Updates the year varubual
	if [[ "$Mounth" != *$year* ]]; then
		year=$((year + 1))
	fi
	#Sets the out put file
	out=./output/$year.csv 

	#Prints the month and info for the mounth
	if [[ "$Day" == */01* ]]; then
		{
			echo " "
			echo "$Mounth,Total # Of Calls:,Notes"
			echo " "
		} >> "$out"
	fi
	
	#Prints the day
	echo "$Day" >> "$out"

	#adds a blank line evrey sunday
	if [[ "$Day" == Sunday* ]]; then
			echo " " >> "$out"
	fi
done