#!/bin/bash -x
wagePerHour=20

echo "Welcome to Employee wage problem"
maxHours=100
maxDays=20
isPartTime=1
isFullTime=2
totalHours=0
totalDays=0


function getHours(){
	case $1 in
      $isFullTime)
     					empHour=8
      				;;
      $isParttime)
      				empHour=4
      				;;
      *)
        empHour=0
        ;;
   esac
	echo $empHour
}

while [[ $totalHours -lt $maxHours &&
			$totalDays -lt $maxDays ]]
do
	((totalDays++))
	empHour="$( getHours $((RANDOM%3)) )"
	totalHours=$(($totalHours+$empHour))
done
echo "days are $totalDays and hours are $totalHours"
