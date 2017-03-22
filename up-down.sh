#!/bin/bash
#Credits to Fast Five l33ts
clear
figlet Up or Down 
echo "Enter URL :==>>"
read url 
status=`curl -Is $url | head -1| cut -d $' ' -f2`
 if [ "$status" == "200" ]
then
  echo "Website is up!"
elif [ "$status" == "302" ] 
	then
	echo "Website MOVED! 302"
elif [ "$status" == "301" ]
	then
	echo " 301 :p "
else 
 echo "Website is Down"	
fi