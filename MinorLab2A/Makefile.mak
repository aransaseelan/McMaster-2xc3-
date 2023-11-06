all: test1 test2 

test1: .FORCE
	./s1.bash test1 test1 300

test2: test1
	./s2.bash test1 test2 0,test 1,test

.FORCE: 
#initialization 

clean:
	rm test1 test2