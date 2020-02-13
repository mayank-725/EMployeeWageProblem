#!/bin/bash
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
attendanceCheck
