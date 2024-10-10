#!/bin/bash
varOne='TZA'
varTwo='KG'

myFunc () {
local varOne='RC'
varTwo='TKR'
echo "This Is Inside Function"
echo "Var One is $varOne"
echo "var two is $varTwo"
}

echo "Before Exec the Func"
echo "var is $varOne"
echo "var is $varTwo"

myFunc
echo "After Exec the func"
echo "var is $varOne"
echo "var two is $varTwo"
