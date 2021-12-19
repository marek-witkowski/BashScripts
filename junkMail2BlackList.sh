#!/usr/bin/env bash

touch results.txt

path2mail="/home"
path2junk1="/Maildir/.Junk/cur"
path2junk2="/Maildir/.Niechciane/cur"

for path in $path2mail/* ;  do

        if [[ -d "$path" && ! -L "$path" ]]; then

                fullPath1="$path$path2junk1";
                fullPath2="$path$path2junk2";

                if [ -d  "$fullPath1" ]; then
                echo "$fullPath1";
                        grep "From: "  $fullPath1/* >> temp.txt;
                fi;
                
                if [ -d "$fullPath2" ]; then
                echo "$fullPath2";
                        grep "From: "  $fullPath2/* >> temp.txt;
                fi;


        fi;

done

# domains
# awk -F "<" '{print $2}' temp.txt | sed s'/>//' | awk 'NF' | awk -F "@" '{print $2}' | sort -u  > results.txt;

# emails
awk -F "<" '{print $2}' temp.txt | sed s'/>//' | awk 'NF' |  sort -u  > results.txt;

sed 's/$/ reject/' results.txt > blacklist
cat blacklist >> /etc/postfix/access
