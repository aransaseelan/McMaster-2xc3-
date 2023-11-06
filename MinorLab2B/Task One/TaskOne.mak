all: show

show: itrexP itrexPT itrexPTN
	@echo 'executing itrexP'
	./itrexP
	rm itrexP
	@echo 'executing itrexPT'
	./itrexPT
	rm itrexPT
	@echo 'executing itrexPTN'
	./itrexPTN
	rm itrexPTN
	rm *.o itrex.cpp itrex1.cpp itrex2.cpp script2

itrex1.cpp: itrex3.cpp 
	tr '3' '1' < itrex3.cpp > itrex1.cpp

itrex2.cpp: itrex3.cpp
	tr '3' '2' < itrex3.cpp > itrex2.cpp

script2: script1 
	sed 's/P/PT/g' script1 > script2
	chmod u+x script2

itrex1.o: itrex1.cpp
	g++ -c itrex1.cpp

itrex2.o: itrex2.cpp
	g++ -c itrex2.cpp

itrex3.o: itrex3.cpp
	g++ -c itrex3.cpp

itrex.cpp: partA partB
	cat partA partB > itrex.cpp

itrexP: itrex.cpp script1
	./script1
	@echo "executing itrexP"
	./itrexP

itrexPT: itrex.cpp script2
	./script2
	@echo "executing itrexPT"
	./itrexPT

itrexPTN: itrex.cpp itrex1.o itrex2.o itrex3.o
	g++ -o itrexPTN itrex.cpp itrex1.o itrex2.o itrex3.o -D_PTN
	@echo "executing itrexPTN"
	./itrexPTN

clean: 
	rm -f itrexP itrexPT itrexPTN
	