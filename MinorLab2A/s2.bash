#!/bin/bash 
#s2 


if [ "$#" -ne 4 ]; then
  echo "Usage: $0 <source_file> <filename> <string1> <string2>"
  exit 1
fi

filename="$2"
source_file="$1" 
string1="$3"
string2="$4"

if [ ! -f "$source_file" ]; then
  echo "Source file '$source_file' does not ex./ist" 
  exit 1
fi

grep -e "$string1" -e "$string2" "$source_file" > "$filename" 

echo "done" >> "$filename" 

echo "File '$filename' created with lines containing '$string1' or '$string2'."