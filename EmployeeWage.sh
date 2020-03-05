#!/bin/bash -x
wagePerHour=20

echo "Welcome to Employee wage problem"

for (( day=1; day<=20; day++ ))
do
	randomCheck=$(( RANDOM%3 ))
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
	salary=$(( $wagePerHour*$empHour ))
 	totalSalary=$(( $totalSalary +$salary ))
done
echo "Monthly wage is "$totalSalary
