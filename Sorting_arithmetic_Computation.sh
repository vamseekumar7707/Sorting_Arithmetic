#!/bin/bash -x
#This Problem Computes Different Arithmetic Expressions And sort the Result

read -p "Enter A :" a
read -p "Enter B :" b
read -p "Enter C :" c

echo "$(((a+b)*c))"

echo "$(((a*b)+c))"

echo "$(((c+a)/b))"

echo "$(((a/b)+c))"


#Declaring Dictionary

declare -A store
store[uc2]=$(((a+b)*c))
store[uc3]=$(((a*b)+c))
store[uc4]=$(((c+a)/b))
store[uc5]=$(((a/b)+c))

echo "Dictionary : ${store[@]}"
