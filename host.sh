#!/bin/sh

for a in 192.168.200.{1..254}
do
      ping -c 3 $a &> /dev/null
      if [ $? -eq 0 ]
      then
           echo "Host $a is up"
      else 
           echo "Host $a is down"
     fi

done
