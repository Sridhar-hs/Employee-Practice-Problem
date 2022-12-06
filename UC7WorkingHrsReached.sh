#!/bin/bash -x

isPartTime=1;
isFullTime=2;
MaxHrsMonth=4;
EmpRatePerHr=20;
NumWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

function getworkinghrs() {
	case $1 in
	$isFullTime)
	workHrs=8
	;;
	$isPartTime)
	workHrs=4
	;;
	*)
	workHrs=0
	;;
esac
echo $workHrs
}
while  [[ $totalWorkHrs -lt $MaxHrsMonth &&
	  $totalWorkingDays -lt $NumWorkingDays ]]
do
	((totalWorkingDays++))
	workHrs="$( getworkinghrs $((RANDOM%3)) )"
	totalWorkHrs=$(($totalWorkHrs+$workHrs))
done
totalSalary=$(($totalWorkHrs*$EmpRatePerHr));
