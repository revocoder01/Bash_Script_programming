#!/bin/bash
read -p "Enter any string separated by space : " str
IFS=' ' #Internal Field Separator
read -ra ADDR <<<"$str" #str ကိုဖတ်ပြီး ADDR ဆိုရေ array အဖြစ် သိမ်းမယ်
for i in "${ADDR[@]}";
do
	echo "$i"
done
