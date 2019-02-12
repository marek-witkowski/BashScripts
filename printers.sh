#!/bin/bash

report="report.csv"


printers=("192.168.3.46" "192.168.3.77" "192.168.3.79" "192.168.3.85")


echo "Printer; counter" | tee >> $report

for count in ${printers[*]}
do	
	echo -n $count";" | tee >> $report
	snmpget  -c public  -v 2c $count 1.3.6.1.2.1.43.10.2.1.4.1.1 | awk '{print $NF}' | tee >> $report 

done
