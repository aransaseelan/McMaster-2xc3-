#!/bin/bash 

echo "Major lab 2: bash script named $(basename $0)"
echo "Please enter your name" 
read name

echo "Hello $name, Welcome to the script!"

if [ $# != 4 ]
then
    echo "Wrong number of command line arguments, execution aborted"
    exit 0
fi

if [ -d "A4" ]; 
then
    rm -r A4
    echo "Directory A4 has been deleted"
else
    echo "Directory A4 does not exist"
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
        while true;
        do
            echo "The destination directories are $2 and $3. Do you want to continue? (YES/NO)"
            read answer2
            if [ "$answer2" == "NO" ]; 
            then
                echo "You requested execution abortion redo"
                break
            elif [ "$answer2" == "YES" ];
            then
                break 2
            else
                echo "Incorrect answer, redo"
            fi
        done
    else
        echo "Incorrect answer, redo"
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

exit 0