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
workHours=0
calculatMonthlyWage()
{
	echo -e "please select the option for calculating Monthly Wage\n1.full Time employee\n2.part Time employee"
	read input
    case $input in
1) 		while ((counter <=20 && workHours<=100))
		do
		attendanceCheck
		result=$?
		if((result==1)) 
		then
		workDay=$((workDay+1))
		workHours=$((workHours+8))
		
        if((workHours>100))
		then
		      workHours=100
		      monthWage=$((workHours*20))
		
	    else
	    	fullTimeEmployeeWage
			res=$?
			monthWage=$((res*workDay))
		fi
		fi	
		counter=$((counter+1))	
		done
		break
		;;
2)		while ((counter <=20 && workHours<=100))
		do
		attendanceCheck
		result=$?
		if((result==1)) 
		then
		workDay=$((workDay+1))
		workHours=$((workHours+8))
		partTimeEmployeeWage
		res=$?
		if((workHours>100))
		then
		      workHours=100
		      monthWage=$((workHours*20))
		
	    else
	    	partTimeEmployeeWage
			res=$?
			monthWage=$((res+workDay))
		fi
		fi 
		counter=$((counter+1))	
		done	

		#return $monthWage
		
		;;
	*)	echo "Invalid Input"
	esac
	echo "calculat MonthlyWage functions:$monthWage"
	
}

echo -e "Please select the options:\n1.Full time\n2.PartTime"
read jobType
case $jobType in
        1)
		echo "Full time"
		#fullTimeEmployeeWage
		calculatMonthlyWage
		# monWage=$?
		# echo "total monthly wage are: $monWage"
		echo "total working day by employee:$workDay"
		echo "total work Hours by employee is:$workHours"

		;;
	2)
		echo "Part Time"
		#partTimeEmployeeWage
		calculatMonthlyWage
		# monWage=$?
		# echo "total monthly wage are:$monWage"
		echo "total working day by employee:$workDay"
		echo "total work Hours by employee is:$workHours"
		;;
	*)
		echo "Please enter the valid input"
		;;
esac