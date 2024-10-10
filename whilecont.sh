#!/bin/bash
i=0
while [ $i -le 10 ]
do
	((i++))
	if [[ "$i" == 5 ]];
	then
		continue
	fi
	if [[ "$i" == 9 ]];
	then
		continue
	fi
	echo $i
done
