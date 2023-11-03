#! /bin/bash

mynum=$1

if [ $mynum -eq 200 ]
then
 echo "Is equal to 200"
elif [ $mynum -le 200 ] 
then
 echo "Is lesser then 200" 
else
 echo "Is bigger then 200"
fi
