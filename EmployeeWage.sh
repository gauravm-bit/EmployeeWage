#!/bin/bash -x
wagePerHour=20
randomCheck=$(( RANDOM%3 ))

echo "Welcome to Employee wage problem"
if [[ $randomCheck == 1 ]]
then
	empHour=8
	echo "Employee is present and fulltime"
elif [[ $randomCheck == 2 ]]
then
	empHour=4
	echo "Employee is present and parttime"
else
	empHour=0
	echo "Employee is absent"
fi
dailyWage=$(( $wagePerHour * $empHour ))
dailyWage=$(( $wagePerHour*$empHour ))
echo "Dailywage is  :" $dailyWage
