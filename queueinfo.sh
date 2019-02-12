#!/bin/bash

queuelength=`/usr/sbin/postqueue -p | tail -n1 | awk '{print $5}'`
queuecount=`echo $queuelength | grep "[0-9]"`

if [ "$queuelength" = "" ]
	then
		echo "Queue clean."
  	exit 0;
fi

if [ "$queuecount" -gt 25 ]

then
		echo  "Queue too long!" | mail -s "[mail]  Queue too large! - $queuecount posts." alarm@mail.com  
fi


