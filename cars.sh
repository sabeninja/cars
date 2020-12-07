#! /bin/bash
# cars.sh
# Shuntaro Abe
input=0
while [ "$input" -ne "3" ]
do
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to quit and exit the program"
	read input
	case "$input" in
		"1") echo "Year: "
			read year
			echo "Make: "
			read make
			echo "Model: "
			read model
			echo "$year:$make:$model" >> My_old_cars
			;;
		"2") sort My_old_cars
			cat My_old_cars
			;;
		"3") echo "Goodbye"
			;;
	esac
done
