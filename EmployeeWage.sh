#!/bin/bash -x
wagePerHour=20
randomCheck=$(( RANDOM%3 ))

echo "Welcome to Employee wage problem"

case $randomCheck in
	0)echo "Employee is absent"
	empHour=0
	;;
	1)echo "Employee is present and fulltime"
	empHour=8
	;;
	2)echo "Employee is present and parttime"
	empHour=4
	;;
esac

dailyWage=$(( $wagePerHour*$empHour ))
echo "Dailywage is  :" $dailyWage
