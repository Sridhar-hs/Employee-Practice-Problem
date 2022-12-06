#!/bin/bash -x

isPartTime=1;
isFullTime=2;
MaxHrsMonth=10;
EmpRatePerHr=20;
NumWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;
while [[ $totalEmpHr -lt $MaxHrsMonth && 
	 $totalWorkingDays -lt $NumWorkingDays ]]
do 
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));

	case $empCheck in
	$isFullTime)
	empHrs=8
	;;
	$isPartTime)
	empHrs=4
	;;
	*)
	empHrs=0
	;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($totalEmpHr*$EmpRatePerHr));
