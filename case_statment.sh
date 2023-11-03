#! /bin/bash
echo "Chose yout favorite distro"
echo "1  - Arch"
echo "2  - CentOs"
echo "3 - Debian"
echo "4  - Mint"
echo "5  - Ubuntu"
echo "6  - Something else...."

read distro;

case $distro in
 1) echo "You chose Arch";;
 2) echo "You chose CentOS";;
 3) echo "You chose Debian";;
 4) echo "You chose Mint";;
 5) echo "You chose Ubuntu";;
 6) echo "You chose Something else....";;
 *)echo "Wrong choise";;
esac 
