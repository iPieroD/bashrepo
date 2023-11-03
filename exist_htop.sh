#! /bin/bash

command=/usr/sbin/htop

if [ -f $command ]
then
 echo "$command is avalible, let's run it..."
else
 echo "$command is NOT avalible, you would to install? y/n "
 read answare
 if [ $answare = "y" ]
 then
 sudo apt update && sudo apt install -y htop
 echo "Succesful"
 else
 echo "Don't install htop"
 fi
fi
