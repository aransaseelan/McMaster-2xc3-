all: test1 test2

test2: test1
	./s2 test1 test2 0,test 1,test
test1: .FORCE
	./s1 test1 test1 300
.FORCE:
clean:
	rm test1 test2