#!/bin/bash -x

wagePerHour=20

echo "Welcome to Employee wage problem"
if [[ $((RANDOM%2)) == 1 ]]
then
	empHour=8
	echo "Employee is present"
else
	empHour=0
	echo "Employee is absent"
fi
dailyWage=$(( $wagePerHour*$empHour ))
echo "Dailywage is  :" $dailyWage
