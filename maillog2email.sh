#!/bin/bash

# the script extracts e-mail addresses from the mail log to separate files

grep to /var/log/maillog | grep status=sent | awk '{ print $7 }' | sed 's/to=<//g' | sed 's/>,//g' | sort -u > addresslist_to.txt

grep from /var/log/maillog | grep queue.active | awk '{ print $7 }' | sed 's/from=<//g' | sed 's/>,//g' | sort -u > addressbook_from.txt
