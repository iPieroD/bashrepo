#! /bin/bash

for i in {0..10..1}
do
 if [ $i -eq 3 ] || [ $i -eq 6 ]
 then
  continue
 fi
  echo $i
done
