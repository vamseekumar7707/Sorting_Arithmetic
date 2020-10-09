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

#Storing Dictionary to Array

counter=0
array[counter++]=${store[uc2]}
array[counter++]=${store[uc3]}
array[counter++]=${store[uc4]}
array[counter++]=${store[uc5]}

echo "ARRAY : ${array[@]}"
echo "COunt" $counter


#Sort in Decending Order

 for (( i=0; i<counter-1; i++ ));
do

   for (( j=0; j<counter-i-1; j++ ));
do
      if (( array[j] < array[j+1] )); then
         tmp=${array[j]}
         array[j]=${array[j+1]}
         array[j+1]=$tmp
      fi
   done

done

echo "sorted Array in Decending order: " ${array[@]}

for (( i=0; i<counter-1; i++ )); do

   for (( j=0; j<counter-i-1; j++ )); do
      if (( array[j] > array[j+1] )); then
         tmp=${array[j]}
         array[j]=${array[j+1]}
         array[j+1]=$tmp
      fi
   done

done


echo "sorted Array in Accending order: " ${array[@]}
