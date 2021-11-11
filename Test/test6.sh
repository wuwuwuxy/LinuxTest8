#!/bin/bash
ping -c 3 $1 >> /dev/nul
if [ $? -ne 0]
  then echo "wrong"
  else echo "correct"
fi
