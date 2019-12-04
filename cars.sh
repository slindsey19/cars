#!/bin/bash
#cars.sh
#Sean Lindsey
while :
do
	echo "Would you like to 1.Add a car 2.List cars in inventory 3.Quit"
	read -r CHOICE
	case "$CHOICE" in 
		"1") echo "Adding Car"
			echo "What is the year?"
			read -r YEAR
			echo "What is the Make?"
			read -r MAKE
			echo "What is the Model?"
			read -r MODEL
			printf "$YEAR:$MAKE:$MODEL\n" >> My_old_cars
			;;
		"2") echo "Listing Car"
			sort My_old_cars
			;;
		"3") echo "Quitting"
			echo "GOODBYE"
			break
			;;
	esac
done

