#!/bin/bash
read -p "Enter your name : " name
if [ "$name" == "Kevingonzalez" ]; then
	echo "Welcome $name, Nice to meet you."
fi
#False Condition
if [ "$name" != "Kevingonzalez" ]; then
	echo "Welcome $name, Nice to meet you."
fi
