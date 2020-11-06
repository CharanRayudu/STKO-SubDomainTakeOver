#!/bin/bash
if [ -z "$1" ]
then
        echo "Usage: ./STKO.sh <example.com>"
        exit 1
fi
echo "Subfinder"
printf "\n----- Getting Subdomains -----\n\n" 
subfinder -d $1 -o subs.txt
sort -u subs.txt -o $1.txt
printf "\n----- Verifying STKO's  -----\n\n"
subjack -w $1.txt -ssl -t 100 -v
subzy -targets $1.txt -hide_fails
rm -rf subs.txt
rm -rf $1.txt
