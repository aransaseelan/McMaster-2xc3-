all:  q1 q2 q3 q4
	rm script2 script3 *.o od.cpp od2.cpp od3.cpp od4.cpp

q1: od.cpp script1
	./script1
q2: od.cpp script2
	./script2
q3: od.cpp od1.o od2.o od3.o od4.o
	g++ -o q3 od.cpp od1.o od2.o od3.o od4.o -D_OTP
q4: od.cpp script3
	./script3
od1.o: od1.cpp
	g++ -c od1.cpp
od2.o: od2.cpp
	g++ -c od2.cpp
od3.o: od3.cpp
	g++ -c od3.cpp
od4.o: od4.cpp
	g++ -c od4.cpp
script2: script1
	tr "1" "2" < script1 > temp
	sed 's/_O/_OT/' temp > script2
	chmod u+x script2
	rm temp
script3: script1
	tr "1" "4" < script1 > temp
	sed 's/-D_O//' temp > script3
	chmod u+x script3
	rm temp
od.cpp: code1 code2 code3
	cp code1 od.cpp
	cat code2 >> od.cpp
	cat code3 >> od.cpp
od2.cpp: od1.cpp
	tr "1" "2" < od1.cpp > od2.cpp
od3.cpp: od1.cpp
	tr "1" "3" < od1.cpp > od3.cpp
od4.cpp: od1.cpp
	tr "1" "4" < od1.cpp > temp
	sed 's/GO/NO GO/' temp > od4.cpp
	rm temp
clean:
	rm q1 q2 q3 q4
