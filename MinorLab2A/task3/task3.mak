all: q1 q2 q3 q4
	rm -f od.cpp od.o od2.cpp od2.o 

script2: script1
	tr '1' '2' < script1 > temp 
	sed 's/_O/_OT/' temp > script2
	chmod u+x script2 
	rm temp 

script3: script1
	tr '1' '4' < script1 > temp 
	sed 's/-D_O//' temp > script3
	chmod u+x script3 
	rm temp

od.cpp: code1 code2 code3
	cat code1 code2 code3 > od.cpp

od2.cpp: od1.cpp 
	sed 's/1/2/g' od1.cpp > od2.cpp

od3.cpp: od1.cpp
	sed 's/1/3/g' od1.cpp > od3.cpp

od4.cpp: od1.cpp
	sed 's/1/4/g' od1.cpp > temp
	sed 's/GO/NO GO/g' temp > od4.cpp
	rm temp

od1.o: od1.cpp
	g++ -c od1.cpp

od2.o: od2.cpp 
	g++ -c od2.cpp

od3.o: od3.cpp
	g++ -c od3.cpp

od4.o: od4.cpp
	g++ -c od4.cpp

q1: od.cpp script1
	@echo "system 1 is great"
	./script1

q2: od.cpp script2
	@echo "system 2 is lousy"
	./script2

q3: od.cpp od1.o od2.o od3.o od4.o
 	@echo "system 1 is GO"
    @echo "system 2 is GO"
    @echo "system 3 is GO"
    @echo "system 4 is NO GO"
    g++ -o q3 od.cpp -D_OTP od1.o od2.o od3.o od4.o

q4: od.cpp script3
	./script3

clean:
	rm -f q1 q2 q3 q4 