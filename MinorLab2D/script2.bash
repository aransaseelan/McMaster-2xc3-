#!/bin/bash 

echo "Major lab 2: bash script named $(basename $0)"

echo "Please enter your name" 
read name
echo "Hello $name, Welcome to the script!"

if [ $# -eq 4 ]
then
    echo "Wrong number of command line arguments, execution aborted"
    exit 0
fi

if [ -d "A4" ]; 
then
    rm -r A4
else
    echo "Directory A4 has been deleted"
fi



while true; 
do
    echo "The source directory is $1. Do you want to continue? (YES/NO)"
    read answer
    if [ "$answer" == "NO" ]; 
    then
        echo "You requested execution abortion"
        exit 0
    elif [ "$answer" == "YES" ]; 
    then
        break
    else
        echo "Invalid answer. Please enter YES or NO."
    fi
done

while true;
 do
    echo "The destination directories are $2 and $3. Do you want to continue? (YES/NO)"
    read answer2
    if [ "$answer2" == "NO" ]; 
    then
        echo "You requested execution abortion redo"
        exit 0
    elif [ "$answer2" == "YES" ];
    then
        break
    else
        echo "Invalid answer. Please enter YES or NO."
    fi
done

echo "Moving files from $1 to $2 , $3" 
for file in "$1"/*; do
    if grep "A" "$file"; then
        mv "$file" "$2"
    else
        mv "$file" "$3"
    fi
done

exit