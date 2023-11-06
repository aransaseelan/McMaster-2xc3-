#!/bin/bash 

echo "#include <stdio.h>" > test.c 
echo "extern int sec1();" >> test.c
echo "extern int sec2();" >> test.c
echo "extern int sec3();" >> test.c
echo "extern int sec4();" >> test.c
echo "int main() {" >> test.c
echo "printf(\"this algorithm is cool.\")" >> test.c
