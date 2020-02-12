#!bin/bash
partTimeHour=4
wagePerHours=20
#calculate the daily wage per hour for full time employee employee
partTimeEmployeeWage()
{
	echo "Full time Wage for employee is:$((partTimeHour*wagePerHours)) per day"
}
partTimeEmployeeWage