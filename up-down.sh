#!/bin/bash
#Credits to Fast Five l33ts
clear
figlet Up or Down 
echo -e "\n\t\e[1;33mEnter URL :==>>"
read url 
status=`curl -Is $url | head -1| cut -d $' ' -f2`
 if [ "$status" == "200" ]
then
  echo " Whoo website is up!"
elif [ "$status" == "302" ] 
	then
	echo "Whoo it looks like 302"
elif [ "$status" == "301" ]
	then
	echo " Whoo Website is up!! "
else 
 echo "Website is Down"	
fi
