#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Missing arguments"
	exit 0
fi

list=$(cat pop_suffixes.txt)
if [[ $2 == "all" ]]
then
	list=$(cat all_suffixes.txt)
fi

for l in $list
do
	status=$(http https://upibankvalidator.com/api/upiValidation?upi=$1@$l upi=$1@$l)
	if [ $(echo $status | jq '.isUpiRegistered') == "true" ];
	then
		echo $1 
		echo $(echo $status | jq '.name')
		break
	fi
done
