#!/bin/bash

#Declare Array for keys and values
keys=("one" "two" "three" "four")
values=("Monitor" "System Unit" "Keyboard" "Mouse")

#printing
	echo "Keys 	Values"
	echo "****	******"
for ((i=0; i<${#keys[@]}; i++)); do
	echo "${keys[i]} = ${values[i]}" 
done
