#! /bin/bash
: '
FRIEND="Do-yun"
ANS="Yes"
echo "Enter your friend name: "
read NAME
echo "He like cookies?"
read LIKE

if [[$NAME = $FRIEND && $LIKE = $ANS]]
then
    echo "One for $NAME, one for me."

else
    echo "One for you, one for me."
fi


echo "Enter your friend name: "
read FNAME
echo "He like cookies?"
read LIKE

if [ $LIKE = "Yes" ]
then 
 echo "One for $FNAME, one for me."
else
 echo "One for you, one for me."
fi

'
if [[ $1 ]]
then 
 echo "One for $1, one for me."
else
 echo "One for you, one for me."
fi
