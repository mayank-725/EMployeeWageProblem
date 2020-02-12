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
		echo "Employee is absent today"
	else
		attendanceResult=1
		echo "Employee is present today"
	fi
}
attendanceCheck

fullTimeHour=8
wagePerHour=20
#calculate the daily wage per hour for full time employee employee
fullTimeEmployeeWage()
{
	echo "Full time Wage for employee is:$((fullTimeHour*wagePerHour)) per day"
}
fullTimeEmployeeWage
