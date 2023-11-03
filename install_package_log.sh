#! /bin/bash

echo "What package you would to install?"

read package

sudo apt install -y $package >> package_install_result.log
if [ $? -eq 0 ] # Si no da error
then 
 echo "The installation of $package was succesful"
 echo "The new command is avalible here: "
 which $package
else 
 echo $? >> package_install_failure.log
 echo "$package is failed to install"
fi
