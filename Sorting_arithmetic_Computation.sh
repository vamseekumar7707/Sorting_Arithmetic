#!/bin/bash -x
#This Problem Computes Different Arithmetic Expressions And sort the Result

read -p "Enter A :" a
read -p "Enter B :" b
read -p "Enter C :" c

echo "$(((a+b)*c))"

echo "$(((a*b)+c))"

echo "$(((c+a)/b))"

echo "$(((a/b)+c))"
