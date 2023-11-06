#!/bin/bash

if [ $# -eq 3 ]
then 
  filename="$1"
  content="$2"
  line_count="$3"
  touch "$filename"
  for ((i=1; i<=$line_count; i++))
  do 
    echo "$i,$content" >> "$filename"
  done
else 
 echo "This is not the right amount of lines, GoodBye! "
 exit 0
fi

