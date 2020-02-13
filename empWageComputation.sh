#!bin/bash
echo   "================================================"
echo   "welcome To the Employee Wage Computation Program"
echo   "================================================"
attendanceResult=0
attendanceCheck()
{
	if(($((RANDOM%2==0))))
    	then
		attendanceResult=0
		#echo "Employee is absent today"
		return $attendanceResult
	else
		attendanceResult=1
		#echo "Employee is present today"
		return $attendanceResult
	fi
}

fullTimeHour=8
wagePerHour=20
#calculate the daily wage per hour for full time employee employee
fullTimeEmployeeWage()
{
          #echo #Full time Wage for employee is:$((fullTimeHour*wagePerHour)) per day"
	  return $((fullTimeHour*wagePerHour))
}

partTimeHour=4
wagePerHours=20
#calculate the daily wage per hour for full time employee employee
partTimeEmployeeWage()
{
	#echo #Full time Wage for employee is:$((partTimeHour*wagePerHours)) per day"
	return $((partTimeHour*wagePerHours))
}

workDay=0
counter=0
monthWage=0
calculatMonthlyWage()
{
	while ((counter!=20))
	do
		attendanceCheck
		result=$?
		if((result==1)) 
		then
			workDay=$((workDay+1))
			fullTimeEmployeeWage
			res=$?
			monthWage=$((res+monthWage))
		fi 	
			counter=$((counter+1))	
	done	
	echo "monthly wage of employee is:$monthWage"
	return $monthWage
}

echo -e "Please select the options:\n1.Full time\n2.PartTime"
read jobType

case $jobType in
        1)
		echo "Full time"
		#fullTimeEmployeeWage
		calculatMonthlyWage
		$monwage=$?
		echo "monthly wage is:$monwage"
		;;
	2)
		echo "Part Time"
		partTimeEmployeeWage
		;;
	*)
		echo "Please enter the valid input"
		;;
	esac
	

