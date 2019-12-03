#!/bin/bash
#cars.sh
#Sean Lindsey

while true;
do
	echo "Would you like to 1.Add a car 2.List cars in inventory 3.Quit"
	read $CHOICE
	if [[ $CHOICE = 1 ]]
	then
		echo "What is the year?"
		read $YEAR
		echo"What is the Make?"
		read $MAKE
		echo "What is the Model?"
		read $MODEL
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars.txt
	elif [[ $CHOICE = 2 ]]
	then
		sort My_old_cars.txt
	elif [[ $CHOICE = 3 ]]
	then
		echo "GOODBYE"
		continue
	break
	fi
done


