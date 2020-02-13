#!bin/bash
attendanceResult=0
attendanceCheck()
{
	if(($((RANDOM%2==0))))
    	then
		 # attendanceResult=0
		 return 0
		#echo "Employee is absent today"
	else
	     # attendanceResult=1
		 return 1
		#echo "Employee is present today"
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
			monthWage=$((res+monthWage))
		fi
		fi	
		counter=$((counter+1))	
		done
		echo $monthWage
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
			monthWage=$((res+monthWage))
		fi
		fi 

		counter=$((counter+1))	
		done	
		echo $monthWage
		;;
*)
		echo "Invalid Input"
esac
}

calculatMonthlyWage
echo "total working day by employee:$workDay"
echo "total work Hours by employee is:$workHours"
