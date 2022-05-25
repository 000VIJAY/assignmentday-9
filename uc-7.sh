#!/bin/bash -x

isPartTime=0
isFullTime=1
empRatePerHr=40
numOfWorkingDays=20
maxRateInMonth=200

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
		$isFullTime )
			empHrs=8
		;;
		$isPartTime )
			empHrs=4
		;;
		*)
			empHrs=0
		;;
	esac
}
while [[ $totalEmpHr -lt $maxRateInMonth &&
	 $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	getWorkingHours $((RANDOM%3))
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalsalary=$((totalEmpHr*empRatePerHr))
