#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHoursInMonth=200
empRatePerHr=40
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{
case $randomcheck in
	"$isPartTime" )
		empHrs=4
	;;
	"$isFullTime" )
		empHrs=8
	;;
	*)
		empHrs=0
	;;
esac
}
function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}
while [[ $totalEmpHr -lt $maxHoursInMonth &&
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomcheck=$((RANDOM%3))
	getWorkingHours $randomcheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done
totalSalary="$( getEmpWage $totalEmpHr )"
echo ${dailyWages[@]}
