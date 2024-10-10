#!/bin/bash
read -p "Enter starting number : " snum
read -p "Enter ending number : " enum

while [[ $snum -le $enum ]]; # -le ဆိုစွာက less than equal #lt lessthan
do
echo $snum
((snum++))
done
echo "This is the sequence that you wanted."
