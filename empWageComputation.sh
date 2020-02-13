#!bin/bash
workDay=0
counter=0
monthWage=0
calculatMonthlyWage()
{
	while ((counter!=0))
	do
		attendanceCheck
		result=$?
		if((result==1)) 
		then
			workday=$((workday+1))
			fullTimeEmployeeWage
			res=$?
			monthWage=res+monthWage
		fi 	
			counter=$((counter+1))	
	done	
	echo "monthly wage of employee is:$monthWage"
	return $monthWage
}
