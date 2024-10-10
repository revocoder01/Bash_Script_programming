#!/bin/bash
#စုံလား မလား ဆိုစွာ စစ်ဆီးဖို့အဆင့်
check_even_odd(){
	local num=$1
#ဇာပိုင် စစ်လို့ရဖို့လဲ ဆိုကေ ၂ နဲ့စားလို့ပြတ်ကေ စုံ ဂဏန်း
 	if((num % 2 == 0)); then	
 		echo "The number of $num is even."

	else
		echo "The number of $num is Odd."
	fi
}

#User Input အပိုင်း
echo "Enter a number to check if it's even or odd: "
read usrinput
if [[ ! $usrinput =~ ^[0-9]+s ]]; then
	echo "Invalid Input. Please enter real number."
	exit 1
fi
check_even_odd $usrinput
