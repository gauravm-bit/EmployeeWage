#!/bin/bash -x
wagePerHour=20

echo "Welcome to Employee wage problem"
maxHours=100
maxDays=20
totalHours=0
totalDays=0

while [[ $totalHours -lt $maxHours &&
			$totalDays -lt $maxDays ]] 
do
	((totalDays++))
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
	totalHours=$(( $totalHours+$empHour ))
	salary=$(( $wagePerHour*$empHour ))
 	totalSalary=$(( $totalSalary+$salary ))
done
echo "Monthly wage is "$totalSalary
