make: complete 

complete: unitA.o unitB.o unitC.o unitD.o
	gcc -o complete main.c unitA.o unitB.o unitC.o unitD.o

unitB.c: unitA.c
	tr 'A' 'Br' < unitA.c > unitB.c

unitC.c: unitA.c
	tr 'A' 'C' < unitA.c > unitC.c

unitD.c: unitA.c
	tr 'A' 'D' < unitA.c > unitD.c

unitA.o: unitA.c
	gcc -c unitA.c

unitB.o: unitB.c
	gcc -c unitB.c

unitC.o: unitC.c
	gcc -c unitC.c

unitD.o: unitD.c
	gcc -c unitD.c

unitE.o: unitE.c
	gcc -c unitE.c
	