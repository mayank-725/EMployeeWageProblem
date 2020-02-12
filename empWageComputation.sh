#!bin/bash
echo -e "Please select the options:\n1.Full time\n2.PartTime"
read jobType

case $jobType in
    1)
		echo "Full time"
		;;
	2)
		echo "Part Time"
		;;
	*)
		echo "Please enter the valid input"
		;;
	esac
	