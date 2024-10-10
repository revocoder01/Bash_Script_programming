#!/bin/bash
echo "This Program is Condition your age."
read -p "Enter your age : " age

if [ $age -gt 18 ]; then
	echo "You're $age years old. over 18"
elif [ $age -lt 18 ]; then
	echo "You're $age years old. under 18"
else
	echo "You're $age."
fi
