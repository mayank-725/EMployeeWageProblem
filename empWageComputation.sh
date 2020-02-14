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


fullTimeEmployeeWage()
{
	#echo "Full time Wage for employee is:$((fullTimeHour*wagePerHour)) per day"
	return 160
}
partTimeEmployeeWage()
{
	#echo "Full time Wage for employee is:$((fullTimeHour*wagePerHour)) per day"
	return 80
}
days=0
totalWages=0
present=0
totalWorkHours=0

getWorkingHours(){
	hours=$1
	while((count!=20 && totalWorkHours<100))
	do
		attendanceCheck
		res=$?
		if(( $res==1 ))
		then
			present=$((present+1))
			totalWorkHours=$((totalWorkHours+hours))
			if((totalWorkHours>100))
			then
				totalWorkHours=100
				return
			fi
		fi
		count=$((count+1))
	done
}

echo -e "Please select the option for type of job\n1.Full-Time\n2.Part-Time"
read jobType
case $jobType in
1)	getWorkingHours 8
	totalWages=$((totalWorkHours*20))
	;;
2)	getWorkingHours 4
	totalWages=$((totalWorkHours*20))
	;;
*)	echo "Enter valid choice"
esac
echo "total working day by employee:$present"
echo "total work Hours by employee is:$totalWorkHours"
echo "Total wage of this month: $totalWages"
