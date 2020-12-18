#!/bin/bash

if [ $# -eq 0 ]
   then
	FILES=( dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11 )
   else
	FILES=( "$@" )

fi

for file in "${FILES[@]}"
do
   RESULT=`ping -c 1 ${file}`
   if [ $? == 0 ]
	then
	   echo "${file}: Alive"
	else
	   echo "${file}: Dead"
	fi
done




