#!/bin/bash

rm  printers.txt

for host in $(seq -f "192.168.3.%g" 41 100)
do
	echo -n $host
	if ping -c 1 $host &> /dev/null
	then
		echo "...OK"
		echo $host >> printers.txt
	else
		echo "...not found"
	fi

done

echo "Finish."

