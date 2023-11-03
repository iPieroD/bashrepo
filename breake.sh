#! /bin/bash

for i in {0..10..1}
do
 if [ $i -gt 5 ]
 then
  break
 fi
 echo $i
done
