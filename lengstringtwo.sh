#!/bin/bash
#string length ခွဲခြားနိုင်သောအမျိုးအစားများ
name="Thanzaw Aou"
length=${#name}
echo $length
expr "$name" : '.*'
echo -n "$name" | wc -c #wc (word count)
echo "$name" | awk '{print length}'
