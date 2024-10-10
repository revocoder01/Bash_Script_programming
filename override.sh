#!/bin/bash
echo "Before Overwriting func"
echo "Welcome to My Scripting Code."
echo "*****************************"

#Overwrite Func
echo(){
	builtin echo -n `date +"[%d-%m-%y %H:%M:%S]"` ":"
	builtin echo $1
}
echo "After Overwriting"
echo "Welcome to linux world."
