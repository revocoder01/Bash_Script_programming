#!/bin/bash

myArr=("Kevin" "Gonzalez" "Revo" "Coder" "TZA",)
echo "I'm.."
echo ${myArr[2]}
echo ${myArr[3]}
length=${#myArr[1]}
echo "Array Two of Index One's length is : $length"
