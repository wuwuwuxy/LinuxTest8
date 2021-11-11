#!/bin/bash
#array_name=(value0 value1 value2 value3)
#read -a value0 value1 value2 value3
arr=(1 6 3 7 4 9 5 8)
a=${#arr[*]}
for ((i=1; i<$a; i++))
do
  for ((j=0; j<$a-i; j++))
  do
    if [ ${arr[$j]} -gt ${arr[$[$j + 1]]} ];then
      temp=${arr[$j]}
      arr[$j]=${arr[$[$j + 1]]}
      arr[$[$j+1]]=$temp
    fi
  done
done

echo ${arr[*]}
