#!/bin/bash

today=`date +%Y-%m-%d`
reportfile=$today"_printers_report.csv"



echo "Printer; counter" | tee > $reportfile

for count in $(cat printers.txt) 
do	
	echo -n $count";" | tee >> $reportfile
	snmpget  -c public  -v 2c $count 1.3.6.1.2.1.43.10.2.1.4.1.1 | awk '{print $NF}' | tee >> $reportfile

done
