#!bin/bash
fullTimeHour=8
wagePerHour=20
#calculate the daily wage per hour for full time employee employee
fullTimeEmployeeWage()
{
	echo "Full time Wage for employee is:$((fullTimeHour*wagePerHour)) per day"
}
fullTimeEmployeeWage