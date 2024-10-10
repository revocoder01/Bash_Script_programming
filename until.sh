#!/bin/bash
#Connection မှားနိန်သမျှ အလုပ်လုပ် မှန်မှ ရပ်ဖို့။
counter=0
until [ $counter -ge 5 ];
do
	echo $counter
	((counter++))	
done
echo "loop finished."
