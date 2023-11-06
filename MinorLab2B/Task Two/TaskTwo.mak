all: show

show: a.py garble
		echo "print('This is 2XC3 course')" > a.py
		echo "print('We are learning how to use the make utility')" >> a.py
		echo "print('We are learning how to use the make utility')" >> a.py
		echo "print('If you do not know the meaning of \"It is a cinch\", google it')" >> a.py
		grep "^B+" garble > tmp
		sed "s/^B+//" tmp >> a.py
		rm tmp
		python a.py

clean:
    	rm a.py