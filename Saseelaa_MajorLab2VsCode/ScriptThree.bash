#!/bin/bash

echo "#include <stdio.h>" > main.c
echo "extern int compA();" >> main.c
echo "extern int compB();" >> main.c
echo "extern int compC();" >> main.c
echo "extern int compD();" >> main.c
echo "int main() {" >> main.c
echo "printf(\"The system has four Units = A:Alpha, B:Bravo, C:Charlie and D:Delta\\n\")" >> main.c
echo "printf("Unit A\\n");" >> main.c
echo "compA();" >> main.c
echo "printf("Unit B\\n");" >> main.c
echo "compB();" >> main.c
echo "printf("Unit C\\n");" >> main.c
echo "compC();" >> main.c
echo "printf("Unit D\\n");" >> main.c
echo "compD();" >> main.c
echo "return 0" >> main.c
echo "}" >> main.c

echo "#include <stdio.h>" > unitA.c
echo "int compA() {" >> unitA.c
echo "printf(\"Unit A: fully operational\\n\");" >> unitA.c
echo "return 0;" >> unitA.c
echo "}" >> unitA.c

make complete
./complete

rm  main.c unitA.c unitA.o unitB.c unitB.o unitC.c unitC.o unitD.c unitD.o complete

