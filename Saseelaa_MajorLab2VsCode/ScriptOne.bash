#!/bin/bash 

echo "Major lab 2: bash script named $(basename $0)"
echo "Current date and time: $(date +"%Y-%m-%d %H:%M:%S")"

mkdir A1 A2 A3 A4

cd A1 

echo "This is file1" > file1
echo "This is file2" > file2
echo "This is file3" > file3

cd .. 
cd A4 

echo "This is file4" > file4
echo "This is file5" > file5

exit 0