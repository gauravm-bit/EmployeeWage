#!/bin/bash -x

echo "Welcome to Employee wage problem"
if [[ $((RANDOM%2)) == 1 ]]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
