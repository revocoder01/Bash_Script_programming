#!/bin/bash

declare -A Animal=(
[one]=Dog
[two]=Cat
[three]=Pig
)
echo ${Animal[*]}
