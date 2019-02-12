#!/bin/bash


git branch -r | grep -v HEAD | awk -F'/' '{print $2 " " $1"/"$2}' | xargs -L 1 git branch -f --track


