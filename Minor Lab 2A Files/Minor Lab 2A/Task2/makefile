f1: f1.py f2.py
	python f1.py
f2.py: .FORCE
	echo '# module f2.py' > f2.py
	echo 'def day():' >> f2.py 
	echo '	x="' `date` '"' >> f2.py
	echo '	x=x[1:4]' >> f2.py
	echo '	print (x)' >> f2.py
.FORCE:
clean:
	rm f2.py*
