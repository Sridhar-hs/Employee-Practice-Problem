#!/bin/bash -x

isPartTime=1;
isFullTime=2;
MaxHrsMonth=20;
EmpRatePerHr=20;
NumWorkingHrs=20;
totalWorkingHrs=0;
totalWorkingDays=0;

function getWorkingHrs() {

	case $1 in
		$isFullTime)
		workinghrs=8
		;;
		$isPartTime)
		workinghrs=4
		;;
		*)
		workinghrs=0
		;;
	esac
	echo $workinghrs
}

