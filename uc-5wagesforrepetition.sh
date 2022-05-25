#!/bin/bash -x

isparttime=1
isfulltime=2
empRatePerHr=40
numOfWorkingDays=20

totalsalary=0

for (( day=1; day<=$numOfWorkingDays; day++ ))
do
		randomcheck=$((RANDOM%3))
		case $randomcheck in
					$isfulltime )
						emphrs=8
					;;
					$isparttime )
						emphrs=4
					;;
					*)
						emphrs=0
					;;
	esac
	salary=$(($emphrs*$empRatePerHr))	#dailywage
	totalsalary=$(($totalsalary+$salary))	#totalsalary
done
