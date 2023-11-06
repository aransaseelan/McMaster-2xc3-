show: itrexP itrexPT itrexPTN
	echo 'executing itrexP'
	./itrexP
	rm itrexP
	echo ''
	echo 'executing itrexPT'
	./itrexPT
	rm itrexPT
	echo ''
	echo 'executing itrexPTN'
	./itrexPTN
	rm itrexPTN
	rm *.o itrex.cpp itrex1.cpp itrex2.cpp script2
itrex.cpp: partA partB
	cp partA itrex.cpp
	cat partB >> itrex.cpp
itrex1.cpp: itrex3.cpp
	tr 3 1 < itrex3.cpp > itrex1.cpp
itrex2.cpp: itrex3.cpp
	tr 3 2 < itrex3.cpp > itrex2.cpp
script2: script1
	sed 's/P/PT/g' script1 > script2
	chmod u+x script2
itrexP: itrex.cpp script1
	./script1
itrexPT: itrex.cpp script2
	./script2
itrexPTN: itrex.cpp itrex1.o itrex2.o itrex3.o
	g++ -o itrexPTN itrex.cpp itrex1.o itrex2.o itrex3.o -D_PTN
itrex1.o: itrex1.cpp
	g++ -c itrex1.cpp
itrex2.o: itrex2.cpp
	g++ -c itrex2.cpp
itrex3.o: itrex3.cpp
	g++ -c itrex3.cpp